import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/repositories/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

/// Manages authentication state and login/logout flows.
@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repository) : super(const AuthState()) {
    on<AuthCheckStatus>(_onCheckStatus);
    on<AuthLoginSubmitted>(_onLoginSubmitted);
    on<AuthLogoutRequested>(_onLogoutRequested);
    on<AuthSessionExpired>(_onSessionExpired);
  }

  final AuthRepository _repository;

  Future<void> _onCheckStatus(
    AuthCheckStatus event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading));
    final hasToken = await _repository.hasToken();
    if (!hasToken) {
      emit(state.copyWith(
        status: StateStatus.success,
        isAuthenticated: false,
        user: null,
      ));
      return;
    }
    final result = await _repository.getCurrentUser();
    result.fold(
      (failure) => emit(state.copyWith(
        status: StateStatus.success,
        isAuthenticated: false,
        user: null,
      )),
      (user) => emit(state.copyWith(
        status: StateStatus.success,
        isAuthenticated: user != null,
        user: user,
      )),
    );
  }

  Future<void> _onLoginSubmitted(
    AuthLoginSubmitted event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(
      status: StateStatus.loading,
      errorMessage: null,
      fieldErrors: {},
    ));
    final result = await _repository.login(
      email: event.email,
      password: event.password,
    );
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          isAuthenticated: true,
          user: data,
        ));
      case FailureResult(:final failure):
        if (failure is ValidationFailure) {
          emit(state.copyWith(
            status: StateStatus.failure,
            fieldErrors: failure.fieldErrors,
          ));
        } else {
          emit(state.copyWith(
            status: StateStatus.failure,
            errorMessage: mapFailureToMessage(failure),
          ));
        }
    }
  }

  Future<void> _onLogoutRequested(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    await _repository.logout();
    emit(const AuthState(status: StateStatus.success));
  }

  Future<void> _onSessionExpired(
    AuthSessionExpired event,
    Emitter<AuthState> emit,
  ) async {
    await _repository.logout();
    emit(const AuthState(status: StateStatus.success));
  }
}
