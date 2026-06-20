import 'package:equatable/equatable.dart';

/// Warehouse entity.
class Warehouse extends Equatable {
  const Warehouse({
    required this.id,
    required this.name,
    this.code,
    this.address,
  });

  final String id;
  final String name;
  final String? code;
  final String? address;

  @override
  List<Object?> get props => [id, name];
}
