import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/entities/sales_entities.dart';
import '../../domain/repositories/sales_repository.dart';

part 'stock_cubit.freezed.dart';

@freezed
abstract class StockState with _$StockState {
  const factory StockState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<StockItem> items,
    @Default('') String searchQuery,
    String? errorMessage,
  }) = _StockState;

  const StockState._();

  List<StockItem> get filteredItems {
    if (searchQuery.isEmpty) return items;
    final q = searchQuery.toLowerCase();
    return items
        .where((i) =>
            i.name.toLowerCase().contains(q) ||
            i.partNumber.toLowerCase().contains(q) ||
            i.location.toLowerCase().contains(q))
        .toList();
  }
}

@injectable
class StockCubit extends Cubit<StockState> {
  StockCubit(this._repository) : super(const StockState());

  final SalesRepository _repository;
  String? _locationType;

  Future<void> load({required String locationType}) async {
    _locationType = locationType;
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result =
        await _repository.getStockItems(locationType: locationType);
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          items: data,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  void searchChanged(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  Future<void> refresh() async {
    if (_locationType != null) {
      await load(locationType: _locationType!);
    }
  }
}
