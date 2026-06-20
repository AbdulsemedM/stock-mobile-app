// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PickTaskModel _$PickTaskModelFromJson(Map<String, dynamic> json) =>
    _PickTaskModel(
      id: json['id'] as String,
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      sku: json['sku'] as String,
      quantityRequired: (json['quantity_required'] as num).toInt(),
      quantityPicked: (json['quantity_picked'] as num).toInt(),
      status: json['status'] as String,
      binCode: json['bin_code'] as String?,
    );

Map<String, dynamic> _$PickTaskModelToJson(_PickTaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'sku': instance.sku,
      'quantity_required': instance.quantityRequired,
      'quantity_picked': instance.quantityPicked,
      'status': instance.status,
      'bin_code': instance.binCode,
    };
