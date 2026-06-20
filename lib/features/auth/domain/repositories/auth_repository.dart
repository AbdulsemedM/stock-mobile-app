import '../../../../core/utils/result.dart';
import '../entities/user.dart';

/// Contract for authentication operations.
abstract class AuthRepository {
  Future<Result<User>> login({required String email, required String password});
  Future<Result<void>> logout();
  Future<Result<User?>> getCurrentUser();
  Future<bool> hasToken();
}
