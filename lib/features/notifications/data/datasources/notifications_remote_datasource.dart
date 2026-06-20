import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/notification_model.dart';

/// Remote data source for notification endpoints.
@lazySingleton
class NotificationsRemoteDataSource {
  NotificationsRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<NotificationModel>> getNotifications() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.notifications;
    }

    try {
      final response = await _client.dio.get<List<dynamic>>('/notifications');
      return (response.data ?? [])
          .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
