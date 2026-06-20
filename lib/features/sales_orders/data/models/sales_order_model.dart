import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/sales_order.dart';

part 'sales_order_model.freezed.dart';
part 'sales_order_model.g.dart';

/// API model for sales orders.
@freezed
abstract class SalesOrderModel with _$SalesOrderModel {
  const factory SalesOrderModel({
    required String id,
    @JsonKey(name: 'so_number') required String soNumber,
    @JsonKey(name: 'customer_name') required String customerName,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'ship_date') DateTime? shipDate,
    @JsonKey(name: 'total_amount') double? totalAmount,
  }) = _SalesOrderModel;

  factory SalesOrderModel.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderModelFromJson(json);

  const SalesOrderModel._();

  SalesOrder toEntity() => SalesOrder(
        id: id,
        soNumber: soNumber,
        customerName: customerName,
        status: status,
        createdAt: createdAt,
        shipDate: shipDate,
        totalAmount: totalAmount,
      );
}
