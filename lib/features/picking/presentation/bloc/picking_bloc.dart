import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/repositories/picking_repository.dart';
import 'picking_event.dart';
import 'picking_state.dart';

/// Manages pick task loading and confirmation flows.
@injectable
class PickingBloc extends Bloc<PickingEvent, PickingState> {
  PickingBloc(this._repository) : super(const PickingState()) {
    on<PickingLoadTasks>(_onLoadTasks);
    on<PickingPickSubmitted>(_onPickSubmitted);
    on<PickingTaskSelected>(_onTaskSelected);
    on<PickingBarcodeScanned>(_onBarcodeScanned);
    on<PickingQuantityChanged>(_onQuantityChanged);
  }

  final PickingRepository _repository;

  Future<void> _onLoadTasks(
    PickingLoadTasks event,
    Emitter<PickingState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getPickTasks(event.salesOrderId);
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          tasks: data,
          selectedTask: data.isNotEmpty ? data.first : null,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> _onPickSubmitted(
    PickingPickSubmitted event,
    Emitter<PickingState> emit,
  ) async {
    emit(state.copyWith(
      status: StateStatus.loading,
      errorMessage: null,
      pickSuccess: false,
    ));
    final result = await _repository.confirmPick(
      salesOrderId: event.salesOrderId,
      pickTaskId: event.pickTaskId,
      barcode: event.barcode,
      quantity: event.quantity,
    );
    switch (result) {
      case Success():
        emit(state.copyWith(
          status: StateStatus.success,
          pickSuccess: true,
          scannedBarcode: null,
          pickQuantity: 1,
        ));
        add(PickingEvent.loadTasks(event.salesOrderId));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  void _onTaskSelected(
    PickingTaskSelected event,
    Emitter<PickingState> emit,
  ) {
    final task = state.tasks.where((t) => t.id == event.taskId).firstOrNull;
    if (task != null) {
      emit(state.copyWith(selectedTask: task, scannedBarcode: null));
    }
  }

  void _onBarcodeScanned(
    PickingBarcodeScanned event,
    Emitter<PickingState> emit,
  ) {
    emit(state.copyWith(scannedBarcode: event.barcode));
  }

  void _onQuantityChanged(
    PickingQuantityChanged event,
    Emitter<PickingState> emit,
  ) {
    emit(state.copyWith(pickQuantity: event.quantity));
  }
}
