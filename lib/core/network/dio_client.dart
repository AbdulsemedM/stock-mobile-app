import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import 'interceptors/auth_interceptor.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

/// Singleton Dio client configured with base URL, timeouts, and interceptors.
@lazySingleton
class DioClient {
  DioClient(
    AuthInterceptor authInterceptor,
    ErrorInterceptor errorInterceptor,
    LoggingInterceptor loggingInterceptor,
  ) {
    _dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['API_BASE_URL'] ?? 'http://localhost:3000/api',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
      ),
    );

    _dio.interceptors.addAll([
      authInterceptor,
      errorInterceptor,
      if (kDebugMode) loggingInterceptor,
    ]);
  }

  late final Dio _dio;

  Dio get dio => _dio;
}
