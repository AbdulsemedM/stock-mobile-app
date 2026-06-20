import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/purchase_order.dart';

part 'purchase_order_model.freezed.dart';
part 'purchase_order_model.g.dart';

/// API model for purchase order line items.
@freezed
abstract class PurchaseOrderLineModel with _$PurchaseOrderLineModel {
  const factory PurchaseOrderLineModel({
    required String id,
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'product_name') required String productName,
    required String sku,
    @JsonKey(name: 'ordered_quantity') required int orderedQuantity,
    @JsonKey(name: 'received_quantity') required int receivedQuantity,
  }) = _PurchaseOrderLineModel;

  factory PurchaseOrderLineModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderLineModelFromJson(json);

  const PurchaseOrderLineModel._();

  PurchaseOrderLine toEntity() => PurchaseOrderLine(
        id: id,
        productId: productId,
        productName: productName,
        sku: sku,
        orderedQuantity: orderedQuantity,
        receivedQuantity: receivedQuantity,
      );
}

/// API model for purchase orders.
@freezed
abstract class PurchaseOrderModel with _$PurchaseOrderModel {
  const factory PurchaseOrderModel({
    required String id,
    @JsonKey(name: 'order_number') required String orderNumber,
    @JsonKey(name: 'supplier_name') required String supplierName,
    required String status,
    @JsonKey(name: 'order_date') required DateTime orderDate,
    @JsonKey(name: 'expected_date') DateTime? expectedDate,
    String? notes,
    @JsonKey(name: 'total_amount') double? totalAmount,
    @Default([]) List<PurchaseOrderLineModel> lines,
  }) = _PurchaseOrderModel;

  factory PurchaseOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderModelFromJson(json);

  const PurchaseOrderModel._();

  PurchaseOrder toEntity() => PurchaseOrder(
        id: id,
        orderNumber: orderNumber,
        supplierName: supplierName,
        status: status,
        orderDate: orderDate,
        expectedDate: expectedDate,
        notes: notes,
        totalAmount: totalAmount,
        lines: lines.map((line) => line.toEntity()).toList(),
      );
}
