import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/state_status.dart';
import '../../domain/entities/cycle_count.dart';

part 'cycle_count_state.freezed.dart';

/// State for cycle count feature.
@freezed
abstract class CycleCountState with _$CycleCountState {
  const factory CycleCountState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<CycleCount> counts,
    CycleCount? selectedCount,
    String? scannedBarcode,
    @Default(1) int entryQuantity,
    String? errorMessage,
    @Default(false) bool entrySuccess,
  }) = _CycleCountState;
}
