import 'package:equatable/equatable.dart';

/// Pick task entity for sales order fulfillment.
class PickTask extends Equatable {
  const PickTask({
    required this.id,
    required this.productId,
    required this.productName,
    required this.sku,
    required this.quantityRequired,
    required this.quantityPicked,
    required this.status,
    this.binCode,
  });

  final String id;
  final String productId;
  final String productName;
  final String sku;
  final int quantityRequired;
  final int quantityPicked;
  final String status;
  final String? binCode;

  bool get isComplete => quantityPicked >= quantityRequired;

  @override
  List<Object?> get props => [id, productId, status];
}
