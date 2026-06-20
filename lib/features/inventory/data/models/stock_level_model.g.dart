// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_level_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockLevelModel _$StockLevelModelFromJson(Map<String, dynamic> json) =>
    _StockLevelModel(
      id: json['id'] as String,
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      sku: json['sku'] as String,
      warehouseId: json['warehouse_id'] as String,
      warehouseName: json['warehouse_name'] as String,
      binId: json['bin_id'] as String,
      binCode: json['bin_code'] as String,
      quantity: (json['quantity'] as num).toInt(),
      reservedQuantity: (json['reserved_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$StockLevelModelToJson(_StockLevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'sku': instance.sku,
      'warehouse_id': instance.warehouseId,
      'warehouse_name': instance.warehouseName,
      'bin_id': instance.binId,
      'bin_code': instance.binCode,
      'quantity': instance.quantity,
      'reserved_quantity': instance.reservedQuantity,
    };
