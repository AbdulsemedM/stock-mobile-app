import 'package:equatable/equatable.dart';

/// Product catalog entity.
class Product extends Equatable {
  const Product({
    required this.id,
    required this.sku,
    required this.name,
    required this.description,
    required this.unitPrice,
    this.barcode,
    this.imageUrl,
  });

  final String id;
  final String sku;
  final String name;
  final String description;
  final double unitPrice;
  final String? barcode;
  final String? imageUrl;

  @override
  List<Object?> get props =>
      [id, sku, name, description, unitPrice, barcode, imageUrl];
}
