import 'package:equatable/equatable.dart';

/// Sales order entity.
class SalesOrder extends Equatable {
  const SalesOrder({
    required this.id,
    required this.soNumber,
    required this.customerName,
    required this.status,
    required this.createdAt,
    this.shipDate,
    this.totalAmount,
  });

  final String id;
  final String soNumber;
  final String customerName;
  final String status;
  final DateTime createdAt;
  final DateTime? shipDate;
  final double? totalAmount;

  @override
  List<Object?> get props => [id, soNumber, status];
}
