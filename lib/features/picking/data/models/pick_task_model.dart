import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/pick_task.dart';

part 'pick_task_model.freezed.dart';
part 'pick_task_model.g.dart';

/// API model for pick tasks.
@freezed
abstract class PickTaskModel with _$PickTaskModel {
  const factory PickTaskModel({
    required String id,
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'product_name') required String productName,
    required String sku,
    @JsonKey(name: 'quantity_required') required int quantityRequired,
    @JsonKey(name: 'quantity_picked') required int quantityPicked,
    required String status,
    @JsonKey(name: 'bin_code') String? binCode,
  }) = _PickTaskModel;

  factory PickTaskModel.fromJson(Map<String, dynamic> json) =>
      _$PickTaskModelFromJson(json);

  const PickTaskModel._();

  PickTask toEntity() => PickTask(
        id: id,
        productId: productId,
        productName: productName,
        sku: sku,
        quantityRequired: quantityRequired,
        quantityPicked: quantityPicked,
        status: status,
        binCode: binCode,
      );
}
