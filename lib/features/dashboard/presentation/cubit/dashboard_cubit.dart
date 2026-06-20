import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../data/repositories/dashboard_repository.dart';
import 'dashboard_state.dart';

/// Loads and manages dashboard KPIs and alerts.
@injectable
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this._repository) : super(const DashboardState());

  final DashboardRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getDashboard();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, data: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }
}
