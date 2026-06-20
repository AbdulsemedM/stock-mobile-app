import 'package:flutter_test/flutter_test.dart';
import 'package:stockflow/core/errors/failures.dart';
import 'package:stockflow/core/utils/result.dart';

void main() {
  group('Result', () {
    test('fold returns success value', () {
      const result = Success<int>(42);
      final value = result.fold((_) => -1, (data) => data);
      expect(value, 42);
    });

    test('fold returns failure mapping', () {
      const result = FailureResult<int>(NetworkFailure());
      final value = result.fold((f) => mapFailureToMessage(f), (_) => '');
      expect(value, 'No internet connection');
    });
  });

  group('mapFailureToMessage', () {
    test('maps server 500 to friendly message', () {
      const failure = ServerFailure(
        statusCode: 500,
        message: 'Internal Server Error',
      );
      expect(
        mapFailureToMessage(failure),
        'Something went wrong on our end, please try again',
      );
    });

    test('maps unauthorized failure', () {
      expect(
        mapFailureToMessage(const UnauthorizedFailure()),
        'Session expired, please log in again',
      );
    });
  });
}
