import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/stock_transfer.dart';

part 'stock_transfer_model.freezed.dart';
part 'stock_transfer_model.g.dart';

/// API model for stock transfers.
@freezed
abstract class StockTransferModel with _$StockTransferModel {
  const factory StockTransferModel({
    required String id,
    @JsonKey(name: 'transfer_number') required String transferNumber,
    @JsonKey(name: 'from_warehouse_name') required String fromWarehouseName,
    @JsonKey(name: 'to_warehouse_name') required String toWarehouseName,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _StockTransferModel;

  factory StockTransferModel.fromJson(Map<String, dynamic> json) =>
      _$StockTransferModelFromJson(json);

  const StockTransferModel._();

  StockTransfer toEntity() => StockTransfer(
        id: id,
        transferNumber: transferNumber,
        fromWarehouseName: fromWarehouseName,
        toWarehouseName: toWarehouseName,
        status: status,
        createdAt: createdAt,
      );
}
