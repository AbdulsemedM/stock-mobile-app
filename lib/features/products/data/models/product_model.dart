import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockflow/features/products/domain/entities/product.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

/// API model for a product.
@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String sku,
    required String name,
    required String description,
    @JsonKey(name: 'unit_price') required double unitPrice,
    String? barcode,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  const ProductModel._();

  Product toEntity() => Product(
        id: id,
        sku: sku,
        name: name,
        description: description,
        unitPrice: unitPrice,
        barcode: barcode,
        imageUrl: imageUrl,
      );
}
