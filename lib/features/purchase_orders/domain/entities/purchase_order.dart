import 'package:equatable/equatable.dart';

/// Line item on a purchase order.
class PurchaseOrderLine extends Equatable {
  const PurchaseOrderLine({
    required this.id,
    required this.productId,
    required this.productName,
    required this.sku,
    required this.orderedQuantity,
    required this.receivedQuantity,
  });

  final String id;
  final String productId;
  final String productName;
  final String sku;
  final int orderedQuantity;
  final int receivedQuantity;

  int get remainingQuantity => orderedQuantity - receivedQuantity;
  bool get isFullyReceived => receivedQuantity >= orderedQuantity;

  @override
  List<Object?> get props => [id, productId, sku];
}

/// Purchase order domain entity.
class PurchaseOrder extends Equatable {
  const PurchaseOrder({
    required this.id,
    required this.orderNumber,
    required this.supplierName,
    required this.status,
    required this.orderDate,
    this.expectedDate,
    this.notes,
    this.totalAmount,
    this.lines = const [],
  });

  final String id;
  final String orderNumber;
  final String supplierName;
  final String status;
  final DateTime orderDate;
  final DateTime? expectedDate;
  final String? notes;
  final double? totalAmount;
  final List<PurchaseOrderLine> lines;

  bool get isFullyReceived =>
      lines.isNotEmpty && lines.every((line) => line.isFullyReceived);

  @override
  List<Object?> get props => [id, orderNumber, status];
}
