// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: json['id'] as String,
      sku: json['sku'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      unitPrice: (json['unit_price'] as num).toDouble(),
      barcode: json['barcode'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'name': instance.name,
      'description': instance.description,
      'unit_price': instance.unitPrice,
      'barcode': instance.barcode,
      'image_url': instance.imageUrl,
    };
