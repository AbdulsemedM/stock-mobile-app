import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/state_status.dart';
import '../../domain/entities/pick_task.dart';

part 'picking_state.freezed.dart';

/// State for picking feature.
@freezed
abstract class PickingState with _$PickingState {
  const factory PickingState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<PickTask> tasks,
    PickTask? selectedTask,
    String? scannedBarcode,
    @Default(1) int pickQuantity,
    String? errorMessage,
    @Default(false) bool pickSuccess,
  }) = _PickingState;
}
