// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_transfer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockTransferModel _$StockTransferModelFromJson(Map<String, dynamic> json) =>
    _StockTransferModel(
      id: json['id'] as String,
      transferNumber: json['transfer_number'] as String,
      fromWarehouseName: json['from_warehouse_name'] as String,
      toWarehouseName: json['to_warehouse_name'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$StockTransferModelToJson(_StockTransferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transfer_number': instance.transferNumber,
      'from_warehouse_name': instance.fromWarehouseName,
      'to_warehouse_name': instance.toWarehouseName,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
    };
