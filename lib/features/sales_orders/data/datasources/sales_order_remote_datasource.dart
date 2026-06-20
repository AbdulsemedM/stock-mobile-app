import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/sales_order_model.dart';

/// Remote data source for sales order endpoints.
@lazySingleton
class SalesOrderRemoteDataSource {
  SalesOrderRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<SalesOrderModel>> getSalesOrders() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.salesOrders;
    }

    try {
      final response = await _client.dio.get<List<dynamic>>('/sales-orders');
      return (response.data ?? [])
          .map((e) => SalesOrderModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<SalesOrderModel> getSalesOrder(String id) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.salesOrders.firstWhere(
        (so) => so.id == id,
        orElse: () => MockDataStore.salesOrders.first,
      );
    }

    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/sales-orders/$id');
      return SalesOrderModel.fromJson(response.data!);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
