/// Sealed failure types for repository and network error mapping.
sealed class Failure {
  const Failure();
}

/// No connectivity or request timeout.
final class NetworkFailure extends Failure {
  const NetworkFailure();
}

/// Server returned an error response.
final class ServerFailure extends Failure {
  const ServerFailure({required this.statusCode, required this.message});
  final int statusCode;
  final String message;
}

/// Request validation failed with field-level errors.
final class ValidationFailure extends Failure {
  const ValidationFailure(this.fieldErrors);
  final Map<String, String> fieldErrors;
}

/// Authentication token expired or invalid.
final class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure();
}

/// Unclassified error.
final class UnknownFailure extends Failure {
  const UnknownFailure([this.message = 'An unexpected error occurred']);
  final String message;
}

/// Maps a [Failure] to a user-facing message string.
String mapFailureToMessage(Failure failure) {
  return switch (failure) {
    NetworkFailure() => 'No internet connection',
    ServerFailure(:final statusCode, :final message) =>
      _serverMessage(statusCode, message),
    ValidationFailure(:final fieldErrors) =>
      fieldErrors.values.firstOrNull ?? 'Please check your input',
    UnauthorizedFailure() => 'Session expired, please log in again',
    UnknownFailure(:final message) => message,
  };
}

String _serverMessage(int statusCode, String message) {
  if (message.isNotEmpty && statusCode < 500) return message;
  return switch (statusCode) {
    400 => 'Invalid request',
    404 => 'Resource not found',
    500 || 502 || 503 => 'Something went wrong on our end, please try again',
    _ => 'Something went wrong, please try again',
  };
}
