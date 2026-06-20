import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/repositories/purchase_order_repository.dart';
import 'purchase_order_event.dart';
import 'purchase_order_state.dart';

/// Manages purchase order list, detail, and receiving.
@injectable
class PurchaseOrderBloc
    extends Bloc<PurchaseOrderEvent, PurchaseOrderState> {
  PurchaseOrderBloc(this._repository) : super(const PurchaseOrderState()) {
    on<PurchaseOrderLoadRequested>(_onLoad);
    on<PurchaseOrderDetailRequested>(_onDetail);
    on<PurchaseOrderReceiveScanned>(_onReceiveScanned);
    on<PurchaseOrderReceiveConfirmed>(_onReceiveConfirmed);
  }

  final PurchaseOrderRepository _repository;

  Future<void> _onLoad(
    PurchaseOrderLoadRequested event,
    Emitter<PurchaseOrderState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getPurchaseOrders();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          purchaseOrders: data,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> _onDetail(
    PurchaseOrderDetailRequested event,
    Emitter<PurchaseOrderState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getPurchaseOrder(event.id);
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          selectedOrder: data,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  void _onReceiveScanned(
    PurchaseOrderReceiveScanned event,
    Emitter<PurchaseOrderState> emit,
  ) {
    emit(state.copyWith(
      pendingBarcode: event.barcode,
      pendingQuantity: event.quantity,
      successMessage: null,
      errorMessage: null,
    ));
  }

  Future<void> _onReceiveConfirmed(
    PurchaseOrderReceiveConfirmed event,
    Emitter<PurchaseOrderState> emit,
  ) async {
    emit(state.copyWith(
      status: StateStatus.loading,
      errorMessage: null,
      successMessage: null,
    ));

    final result = await _repository.receiveItem(
      purchaseOrderId: event.purchaseOrderId,
      barcode: event.barcode,
      quantity: event.quantity,
    );

    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          selectedOrder: data,
          pendingBarcode: null,
          successMessage: 'Received ${event.quantity} item(s)',
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }
}
