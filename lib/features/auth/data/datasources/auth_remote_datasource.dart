import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/user_model.dart';

/// Remote data source for authentication endpoints.
@lazySingleton
class AuthRemoteDataSource {
  AuthRemoteDataSource(this._client);

  final DioClient _client;

  Future<({UserModel user, String token})> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _client.dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: {'email': email, 'password': password},
      );
      final data = response.data!;
      final token = data['token'] as String;
      final userJson = data['user'] as Map<String, dynamic>;
      return (user: UserModel.fromJson(userJson), token: token);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<UserModel> getCurrentUser() async {
    try {
      final response = await _client.dio.get<Map<String, dynamic>>('/auth/me');
      return UserModel.fromJson(response.data!);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
