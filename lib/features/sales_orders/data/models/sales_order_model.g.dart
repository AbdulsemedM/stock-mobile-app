// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesOrderModel _$SalesOrderModelFromJson(Map<String, dynamic> json) =>
    _SalesOrderModel(
      id: json['id'] as String,
      soNumber: json['so_number'] as String,
      customerName: json['customer_name'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      shipDate: json['ship_date'] == null
          ? null
          : DateTime.parse(json['ship_date'] as String),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SalesOrderModelToJson(_SalesOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'so_number': instance.soNumber,
      'customer_name': instance.customerName,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'ship_date': instance.shipDate?.toIso8601String(),
      'total_amount': instance.totalAmount,
    };
