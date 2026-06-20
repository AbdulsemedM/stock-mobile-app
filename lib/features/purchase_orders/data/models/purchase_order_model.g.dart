// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchaseOrderLineModel _$PurchaseOrderLineModelFromJson(
  Map<String, dynamic> json,
) => _PurchaseOrderLineModel(
  id: json['id'] as String,
  productId: json['product_id'] as String,
  productName: json['product_name'] as String,
  sku: json['sku'] as String,
  orderedQuantity: (json['ordered_quantity'] as num).toInt(),
  receivedQuantity: (json['received_quantity'] as num).toInt(),
);

Map<String, dynamic> _$PurchaseOrderLineModelToJson(
  _PurchaseOrderLineModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'product_name': instance.productName,
  'sku': instance.sku,
  'ordered_quantity': instance.orderedQuantity,
  'received_quantity': instance.receivedQuantity,
};

_PurchaseOrderModel _$PurchaseOrderModelFromJson(Map<String, dynamic> json) =>
    _PurchaseOrderModel(
      id: json['id'] as String,
      orderNumber: json['order_number'] as String,
      supplierName: json['supplier_name'] as String,
      status: json['status'] as String,
      orderDate: DateTime.parse(json['order_date'] as String),
      expectedDate: json['expected_date'] == null
          ? null
          : DateTime.parse(json['expected_date'] as String),
      notes: json['notes'] as String?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      lines:
          (json['lines'] as List<dynamic>?)
              ?.map(
                (e) =>
                    PurchaseOrderLineModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PurchaseOrderModelToJson(_PurchaseOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'supplier_name': instance.supplierName,
      'status': instance.status,
      'order_date': instance.orderDate.toIso8601String(),
      'expected_date': instance.expectedDate?.toIso8601String(),
      'notes': instance.notes,
      'total_amount': instance.totalAmount,
      'lines': instance.lines.map((e) => e.toJson()).toList(),
    };
