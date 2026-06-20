import 'package:equatable/equatable.dart';

/// Cycle count entity.
class CycleCount extends Equatable {
  const CycleCount({
    required this.id,
    required this.countNumber,
    required this.warehouseName,
    required this.status,
    required this.createdAt,
    this.itemCount,
  });

  final String id;
  final String countNumber;
  final String warehouseName;
  final String status;
  final DateTime createdAt;
  final int? itemCount;

  @override
  List<Object?> get props => [id, countNumber, status];
}
