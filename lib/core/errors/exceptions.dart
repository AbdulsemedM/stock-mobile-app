/// Data-source level exceptions thrown before mapping to [Failure].
class AppException implements Exception {
  const AppException(this.message);
  final String message;

  @override
  String toString() => 'AppException: $message';
}

class NetworkException extends AppException {
  const NetworkException() : super('No internet connection');
}

class ServerException extends AppException {
  const ServerException({required this.statusCode, required String message})
      : super(message);
  final int statusCode;
}

class UnauthorizedException extends AppException {
  const UnauthorizedException() : super('Unauthorized');
}

class ValidationException extends AppException {
  const ValidationException(this.fieldErrors)
      : super('Validation failed');
  final Map<String, String> fieldErrors;
}
