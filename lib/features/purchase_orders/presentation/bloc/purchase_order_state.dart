import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/state_status.dart';
import '../../domain/entities/purchase_order.dart';

part 'purchase_order_state.freezed.dart';

/// State for purchase order flows.
@freezed
abstract class PurchaseOrderState with _$PurchaseOrderState {
  const factory PurchaseOrderState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<PurchaseOrder> purchaseOrders,
    PurchaseOrder? selectedOrder,
    String? errorMessage,
    String? successMessage,
    String? pendingBarcode,
    @Default(1) int pendingQuantity,
  }) = _PurchaseOrderState;
}
