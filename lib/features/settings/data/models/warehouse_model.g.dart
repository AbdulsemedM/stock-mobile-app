// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WarehouseModel _$WarehouseModelFromJson(Map<String, dynamic> json) =>
    _WarehouseModel(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$WarehouseModelToJson(_WarehouseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'address': instance.address,
    };
