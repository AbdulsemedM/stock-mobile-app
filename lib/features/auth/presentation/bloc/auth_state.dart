import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/state_status.dart';
import '../../domain/entities/user.dart';

part 'auth_state.freezed.dart';

/// State for the authentication feature.
@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(StateStatus.initial) StateStatus status,
    User? user,
    @Default(false) bool isAuthenticated,
    String? errorMessage,
    @Default({}) Map<String, String> fieldErrors,
  }) = _AuthState;
}
