import 'package:equatable/equatable.dart';

/// Stock level at a warehouse bin for a product.
class StockLevel extends Equatable {
  const StockLevel({
    required this.id,
    required this.productId,
    required this.productName,
    required this.sku,
    required this.warehouseId,
    required this.warehouseName,
    required this.binId,
    required this.binCode,
    required this.quantity,
    required this.reservedQuantity,
  });

  final String id;
  final String productId;
  final String productName;
  final String sku;
  final String warehouseId;
  final String warehouseName;
  final String binId;
  final String binCode;
  final int quantity;
  final int reservedQuantity;

  int get availableQuantity => quantity - reservedQuantity;

  @override
  List<Object?> get props => [
        id,
        productId,
        productName,
        sku,
        warehouseId,
        warehouseName,
        binId,
        binCode,
        quantity,
        reservedQuantity,
      ];
}
