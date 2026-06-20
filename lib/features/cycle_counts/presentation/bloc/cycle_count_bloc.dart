import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/repositories/cycle_count_repository.dart';
import 'cycle_count_event.dart';
import 'cycle_count_state.dart';

/// Manages cycle count list and entry flows.
@injectable
class CycleCountBloc extends Bloc<CycleCountEvent, CycleCountState> {
  CycleCountBloc(this._repository) : super(const CycleCountState()) {
    on<CycleCountLoadList>(_onLoadList);
    on<CycleCountLoadDetail>(_onLoadDetail);
    on<CycleCountEntrySubmitted>(_onEntrySubmitted);
    on<CycleCountBarcodeScanned>(_onBarcodeScanned);
    on<CycleCountQuantityChanged>(_onQuantityChanged);
  }

  final CycleCountRepository _repository;

  Future<void> _onLoadList(
    CycleCountLoadList event,
    Emitter<CycleCountState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getCycleCounts();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, counts: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> _onLoadDetail(
    CycleCountLoadDetail event,
    Emitter<CycleCountState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getCycleCount(event.id);
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, selectedCount: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> _onEntrySubmitted(
    CycleCountEntrySubmitted event,
    Emitter<CycleCountState> emit,
  ) async {
    emit(state.copyWith(
      status: StateStatus.loading,
      errorMessage: null,
      entrySuccess: false,
    ));
    final result = await _repository.submitCountEntry(
      cycleCountId: event.cycleCountId,
      barcode: event.barcode,
      quantity: event.quantity,
    );
    switch (result) {
      case Success():
        emit(state.copyWith(
          status: StateStatus.success,
          entrySuccess: true,
          scannedBarcode: null,
          entryQuantity: 1,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  void _onBarcodeScanned(
    CycleCountBarcodeScanned event,
    Emitter<CycleCountState> emit,
  ) {
    emit(state.copyWith(scannedBarcode: event.barcode));
  }

  void _onQuantityChanged(
    CycleCountQuantityChanged event,
    Emitter<CycleCountState> emit,
  ) {
    emit(state.copyWith(entryQuantity: event.quantity));
  }
}
