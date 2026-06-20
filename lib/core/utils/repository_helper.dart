import '../errors/exceptions.dart';
import '../errors/failures.dart';
import 'result.dart';

/// Maps exceptions thrown by data sources to [Failure] wrapped in [Result].
Future<Result<T>> catchException<T>(Future<T> Function() call) async {
  try {
    final data = await call();
    return Success(data);
  } on NetworkException {
    return const FailureResult(NetworkFailure());
  } on UnauthorizedException {
    return const FailureResult(UnauthorizedFailure());
  } on ValidationException catch (e) {
    return FailureResult(ValidationFailure(e.fieldErrors));
  } on ServerException catch (e) {
    return FailureResult(
      ServerFailure(statusCode: e.statusCode, message: e.message),
    );
  } on AppException catch (e) {
    return FailureResult(UnknownFailure(e.message));
  } catch (_) {
    return const FailureResult(UnknownFailure());
  }
}
