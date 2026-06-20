import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/warehouse.dart';

part 'warehouse_model.freezed.dart';
part 'warehouse_model.g.dart';

/// API model for warehouses.
@freezed
abstract class WarehouseModel with _$WarehouseModel {
  const factory WarehouseModel({
    required String id,
    required String name,
    String? code,
    String? address,
  }) = _WarehouseModel;

  factory WarehouseModel.fromJson(Map<String, dynamic> json) =>
      _$WarehouseModelFromJson(json);

  const WarehouseModel._();

  Warehouse toEntity() => Warehouse(
        id: id,
        name: name,
        code: code,
        address: address,
      );
}
