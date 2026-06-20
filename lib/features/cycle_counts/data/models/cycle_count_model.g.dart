// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CycleCountModel _$CycleCountModelFromJson(Map<String, dynamic> json) =>
    _CycleCountModel(
      id: json['id'] as String,
      countNumber: json['count_number'] as String,
      warehouseName: json['warehouse_name'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      itemCount: (json['item_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CycleCountModelToJson(_CycleCountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count_number': instance.countNumber,
      'warehouse_name': instance.warehouseName,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'item_count': instance.itemCount,
    };
