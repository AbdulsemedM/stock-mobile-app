import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockflow/features/inventory/domain/entities/stock_level.dart';

part 'stock_level_model.freezed.dart';
part 'stock_level_model.g.dart';

/// API model for a stock level record.
@freezed
abstract class StockLevelModel with _$StockLevelModel {
  const factory StockLevelModel({
    required String id,
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'product_name') required String productName,
    required String sku,
    @JsonKey(name: 'warehouse_id') required String warehouseId,
    @JsonKey(name: 'warehouse_name') required String warehouseName,
    @JsonKey(name: 'bin_id') required String binId,
    @JsonKey(name: 'bin_code') required String binCode,
    required int quantity,
    @JsonKey(name: 'reserved_quantity') required int reservedQuantity,
  }) = _StockLevelModel;

  factory StockLevelModel.fromJson(Map<String, dynamic> json) =>
      _$StockLevelModelFromJson(json);

  const StockLevelModel._();

  StockLevel toEntity() => StockLevel(
        id: id,
        productId: productId,
        productName: productName,
        sku: sku,
        warehouseId: warehouseId,
        warehouseName: warehouseName,
        binId: binId,
        binCode: binCode,
        quantity: quantity,
        reservedQuantity: reservedQuantity,
      );
}
