import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cycle_count.dart';

part 'cycle_count_model.freezed.dart';
part 'cycle_count_model.g.dart';

/// API model for cycle counts.
@freezed
abstract class CycleCountModel with _$CycleCountModel {
  const factory CycleCountModel({
    required String id,
    @JsonKey(name: 'count_number') required String countNumber,
    @JsonKey(name: 'warehouse_name') required String warehouseName,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'item_count') int? itemCount,
  }) = _CycleCountModel;

  factory CycleCountModel.fromJson(Map<String, dynamic> json) =>
      _$CycleCountModelFromJson(json);

  const CycleCountModel._();

  CycleCount toEntity() => CycleCount(
        id: id,
        countNumber: countNumber,
        warehouseName: warehouseName,
        status: status,
        createdAt: createdAt,
        itemCount: itemCount,
      );
}
