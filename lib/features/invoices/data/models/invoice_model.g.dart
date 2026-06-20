// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoiceModel _$InvoiceModelFromJson(Map<String, dynamic> json) =>
    _InvoiceModel(
      id: json['id'] as String,
      invoiceNumber: json['invoice_number'] as String,
      customerName: json['customer_name'] as String,
      status: json['status'] as String,
      totalAmount: (json['total_amount'] as num).toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
    );

Map<String, dynamic> _$InvoiceModelToJson(_InvoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_number': instance.invoiceNumber,
      'customer_name': instance.customerName,
      'status': instance.status,
      'total_amount': instance.totalAmount,
      'created_at': instance.createdAt.toIso8601String(),
      'due_date': instance.dueDate?.toIso8601String(),
    };
