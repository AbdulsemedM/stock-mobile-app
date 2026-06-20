import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/dashboard_models.dart';
import '../../../../core/utils/state_status.dart';

part 'dashboard_state.freezed.dart';

/// State for the dashboard screen.
@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(StateStatus.initial) StateStatus status,
    DashboardData? data,
    String? errorMessage,
  }) = _DashboardState;
}
