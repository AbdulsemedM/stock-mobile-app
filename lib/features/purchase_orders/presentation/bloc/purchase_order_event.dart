import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_order_event.freezed.dart';

/// Events for purchase order list, detail, and receiving flows.
@freezed
sealed class PurchaseOrderEvent with _$PurchaseOrderEvent {
  const factory PurchaseOrderEvent.loadRequested() = PurchaseOrderLoadRequested;

  const factory PurchaseOrderEvent.detailRequested(String id) =
      PurchaseOrderDetailRequested;

  const factory PurchaseOrderEvent.receiveScanned({
    required String purchaseOrderId,
    required String barcode,
    @Default(1) int quantity,
  }) = PurchaseOrderReceiveScanned;

  const factory PurchaseOrderEvent.receiveConfirmed({
    required String purchaseOrderId,
    required String barcode,
    required int quantity,
  }) = PurchaseOrderReceiveConfirmed;
}
