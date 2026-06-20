import 'package:equatable/equatable.dart';

/// Stock transfer entity.
class StockTransfer extends Equatable {
  const StockTransfer({
    required this.id,
    required this.transferNumber,
    required this.fromWarehouseName,
    required this.toWarehouseName,
    required this.status,
    required this.createdAt,
  });

  final String id;
  final String transferNumber;
  final String fromWarehouseName;
  final String toWarehouseName;
  final String status;
  final DateTime createdAt;

  @override
  List<Object?> get props => [id, transferNumber, status];
}
