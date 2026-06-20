import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../errors/exceptions.dart';

typedef UnauthorizedCallback = void Function();

/// Global callback invoked when a 401 response is received.
UnauthorizedCallback? onUnauthorized;

/// Maps Dio errors to typed exceptions and triggers global 401 handling.
@lazySingleton
class ErrorInterceptor extends Interceptor {
  ErrorInterceptor(this._connectivity);

  final Connectivity _connectivity;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final connectivity = await _connectivity.checkConnectivity();
    if (connectivity.contains(ConnectivityResult.none)) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const NetworkException(),
          type: DioExceptionType.connectionError,
        ),
      );
      return;
    }

    if (err.response?.statusCode == 401) {
      onUnauthorized?.call();
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const UnauthorizedException(),
          response: err.response,
          type: DioExceptionType.badResponse,
        ),
      );
      return;
    }

    handler.next(err);
  }
}

/// Converts a [DioException] into a typed [AppException].
Never throwDioException(DioException e) {
  if (e.error is AppException) {
    throw e.error as AppException;
  }

  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.connectionError:
      throw const NetworkException();
    case DioExceptionType.badResponse:
      final status = e.response?.statusCode ?? 500;
      final data = e.response?.data;
      if (status == 401) throw const UnauthorizedException();
      if (status == 422 && data is Map<String, dynamic>) {
        final errors = data['errors'];
        if (errors is Map<String, dynamic>) {
          throw ValidationException(
            errors.map((k, v) => MapEntry(k, v.toString())),
          );
        }
      }
      final message = _extractMessage(data) ?? 'Request failed';
      throw ServerException(statusCode: status, message: message);
    default:
      throw AppException(e.message ?? 'Unknown error');
  }
}

String? _extractMessage(dynamic data) {
  if (data is Map<String, dynamic>) {
    return data['message'] as String? ?? data['error'] as String?;
  }
  return null;
}
