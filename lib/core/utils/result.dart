import '../errors/failures.dart';

/// Lightweight Result type wrapping success or failure without a third-party Either.
sealed class Result<T> {
  const Result();

  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is FailureResult<T>;

  R fold<R>(R Function(Failure failure) onFailure, R Function(T data) onSuccess) {
    return switch (this) {
      Success<T>(:final data) => onSuccess(data),
      FailureResult<T>(:final failure) => onFailure(failure),
    };
  }
}

/// Successful result carrying data.
final class Success<T> extends Result<T> {
  const Success(this.data);
  final T data;
}

/// Failed result carrying a [Failure].
final class FailureResult<T> extends Result<T> {
  const FailureResult(this.failure);
  final Failure failure;
}
