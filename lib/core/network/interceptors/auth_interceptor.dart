import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

/// Key used for storing the auth token in secure storage.
const String authTokenKey = 'auth_token';

/// Attaches Bearer token from secure storage to outgoing requests.
@lazySingleton
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _secureStorage.read(key: authTokenKey);
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
