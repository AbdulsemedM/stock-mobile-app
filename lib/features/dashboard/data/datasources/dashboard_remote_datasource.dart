import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/dashboard_models.dart';

/// Remote data source for dashboard metrics.
@lazySingleton
class DashboardRemoteDataSource {
  DashboardRemoteDataSource(this._client);

  final DioClient _client;

  Future<DashboardData> fetchDashboard() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.dashboard;
    }

    try {
      final response = await _client.dio.get<Map<String, dynamic>>('/dashboard');
      final data = response.data!;
      return DashboardData(
        kpis: (data['kpis'] as List<dynamic>? ?? [])
            .map((e) => DashboardKpi(
                  label: e['label'] as String,
                  value: e['value'].toString(),
                  trend: e['trend'] as String?,
                ))
            .toList(),
        lowStockAlerts: (data['low_stock'] as List<dynamic>? ?? [])
            .map((e) => LowStockAlert(
                  productId: e['product_id'].toString(),
                  productName: e['product_name'] as String,
                  sku: e['sku'] as String,
                  quantity: e['quantity'] as int,
                  reorderPoint: e['reorder_point'] as int,
                ))
            .toList(),
        recentActivity: (data['recent_activity'] as List<dynamic>? ?? [])
            .map((e) => RecentActivity(
                  id: e['id'].toString(),
                  title: e['title'] as String,
                  description: e['description'] as String,
                  timestamp: DateTime.parse(e['timestamp'] as String),
                  type: e['type'] as String,
                ))
            .toList(),
      );
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
