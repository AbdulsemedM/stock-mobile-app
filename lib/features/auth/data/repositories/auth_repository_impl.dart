import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/interceptors/auth_interceptor.dart';
import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

/// Implementation of [AuthRepository] with secure token storage.
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._remote, this._secureStorage);

  final AuthRemoteDataSource _remote;
  final FlutterSecureStorage _secureStorage;

  String? _mockEmail;

  @override
  Future<Result<User>> login({
    required String email,
    required String password,
  }) async {
    if (MockConfig.enabled) {
      await mockDelay();
      final resolvedEmail =
          email.trim().isEmpty ? 'demo@stockflow.com' : email.trim();
      _mockEmail = resolvedEmail;
      await _secureStorage.write(key: authTokenKey, value: MockDataStore.mockToken);
      return Success(MockDataStore.mockUser(email: resolvedEmail));
    }

    return catchException(() async {
      final result = await _remote.login(email: email, password: password);
      await _secureStorage.write(key: authTokenKey, value: result.token);
      return result.user.toEntity();
    });
  }

  @override
  Future<Result<void>> logout() {
    if (MockConfig.enabled) {
      return catchException(() async {
        _mockEmail = null;
        await _secureStorage.delete(key: authTokenKey);
      });
    }

    return catchException(() async {
      await _secureStorage.delete(key: authTokenKey);
    });
  }

  @override
  Future<Result<User?>> getCurrentUser() {
    if (MockConfig.enabled) {
      return catchException(() async {
        final hasToken = await this.hasToken();
        if (!hasToken) return null;
        return MockDataStore.mockUser(
          email: _mockEmail ?? 'demo@stockflow.com',
        );
      });
    }

    return catchException(() async {
      final hasToken = await this.hasToken();
      if (!hasToken) return null;
      final user = await _remote.getCurrentUser();
      return user.toEntity();
    });
  }

  @override
  Future<bool> hasToken() async {
    final token = await _secureStorage.read(key: authTokenKey);
    return token != null && token.isNotEmpty;
  }
}
