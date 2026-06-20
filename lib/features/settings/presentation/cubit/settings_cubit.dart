import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../data/repositories/settings_repository.dart';
import 'settings_state.dart';

/// Manages settings and warehouse selection.
@injectable
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this._repository) : super(const SettingsState());

  final SettingsRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final savedId = _repository.getLastWarehouseId();
    final result = await _repository.getWarehouses();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          warehouses: data,
          selectedWarehouseId: savedId,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> selectWarehouse(String warehouseId) async {
    await _repository.saveLastWarehouseId(warehouseId);
    emit(state.copyWith(selectedWarehouseId: warehouseId));
  }
}
