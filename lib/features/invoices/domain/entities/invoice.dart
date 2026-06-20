import 'package:equatable/equatable.dart';

/// Invoice entity.
class Invoice extends Equatable {
  const Invoice({
    required this.id,
    required this.invoiceNumber,
    required this.customerName,
    required this.status,
    required this.totalAmount,
    required this.createdAt,
    this.dueDate,
  });

  final String id;
  final String invoiceNumber;
  final String customerName;
  final String status;
  final double totalAmount;
  final DateTime createdAt;
  final DateTime? dueDate;

  @override
  List<Object?> get props => [id, invoiceNumber, status];
}
