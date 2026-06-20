import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stockflow/core/errors/failures.dart';
import 'package:stockflow/core/utils/result.dart';
import 'package:stockflow/core/utils/state_status.dart';
import 'package:stockflow/features/inventory/domain/entities/stock_level.dart';
import 'package:stockflow/features/inventory/domain/repositories/inventory_repository.dart';
import 'package:stockflow/features/inventory/presentation/bloc/inventory_event.dart';
import 'package:stockflow/features/inventory/presentation/bloc/inventory_state.dart';

/// Manages stock level list, warehouse filtering, and detail loading.
@injectable
class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  InventoryBloc(this._repository) : super(const InventoryState()) {
    on<InventoryLoadRequested>(_onLoadRequested);
    on<InventoryWarehouseFilterChanged>(_onWarehouseFilterChanged);
  }

  final InventoryRepository _repository;

  Future<void> _onLoadRequested(
    InventoryLoadRequested event,
    Emitter<InventoryState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));

    if (event.stockLevelId != null) {
      final result = await _repository.getStockLevel(event.stockLevelId!);
      switch (result) {
        case Success(:final data):
          emit(state.copyWith(
            status: StateStatus.success,
            selectedStockLevel: data,
          ));
        case FailureResult(:final failure):
          emit(state.copyWith(
            status: StateStatus.failure,
            errorMessage: mapFailureToMessage(failure),
          ));
      }
      return;
    }

    final result = await _repository.getStockLevels(
      warehouseId: state.warehouseId,
    );
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          stockLevels: data,
          warehouses: _mergeWarehouses(state.warehouses, data),
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> _onWarehouseFilterChanged(
    InventoryWarehouseFilterChanged event,
    Emitter<InventoryState> emit,
  ) async {
    emit(state.copyWith(
      warehouseId: event.warehouseId,
      status: StateStatus.loading,
      errorMessage: null,
    ));

    final result = await _repository.getStockLevels(
      warehouseId: event.warehouseId,
    );
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          stockLevels: data,
          warehouses: _mergeWarehouses(state.warehouses, data),
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Map<String, String> _mergeWarehouses(
    Map<String, String> existing,
    List<StockLevel> levels,
  ) {
    final merged = Map<String, String>.from(existing);
    for (final level in levels) {
      merged[level.warehouseId] = level.warehouseName;
    }
    return merged;
  }
}
