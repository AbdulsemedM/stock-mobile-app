import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

/// Events for the authentication flow.
@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkStatus() = AuthCheckStatus;
  const factory AuthEvent.loginSubmitted({
    required String email,
    required String password,
  }) = AuthLoginSubmitted;
  const factory AuthEvent.logoutRequested() = AuthLogoutRequested;
  const factory AuthEvent.sessionExpired() = AuthSessionExpired;
}
