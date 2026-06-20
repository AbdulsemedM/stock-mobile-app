import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/notification_model.dart';
import '../../../../core/utils/state_status.dart';

part 'notifications_state.freezed.dart';

/// State for notifications screen.
@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<NotificationModel> notifications,
    String? errorMessage,
  }) = _NotificationsState;
}
