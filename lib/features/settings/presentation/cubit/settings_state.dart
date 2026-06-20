import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/warehouse.dart';
import '../../../../core/utils/state_status.dart';

part 'settings_state.freezed.dart';

/// State for settings feature.
@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<Warehouse> warehouses,
    String? selectedWarehouseId,
    String? errorMessage,
  }) = _SettingsState;
}
