import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/warehouse_model.dart';

/// Remote data source for settings-related endpoints.
@lazySingleton
class SettingsRemoteDataSource {
  SettingsRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<WarehouseModel>> getWarehouses() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.warehouses;
    }

    try {
      final response = await _client.dio.get<List<dynamic>>('/warehouses');
      return (response.data ?? [])
          .map((e) => WarehouseModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
