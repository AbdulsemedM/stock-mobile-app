import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/invoice.dart';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

/// API model for invoices.
@freezed
abstract class InvoiceModel with _$InvoiceModel {
  const factory InvoiceModel({
    required String id,
    @JsonKey(name: 'invoice_number') required String invoiceNumber,
    @JsonKey(name: 'customer_name') required String customerName,
    required String status,
    @JsonKey(name: 'total_amount') required double totalAmount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'due_date') DateTime? dueDate,
  }) = _InvoiceModel;

  factory InvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceModelFromJson(json);

  const InvoiceModel._();

  Invoice toEntity() => Invoice(
        id: id,
        invoiceNumber: invoiceNumber,
        customerName: customerName,
        status: status,
        totalAmount: totalAmount,
        createdAt: createdAt,
        dueDate: dueDate,
      );
}
