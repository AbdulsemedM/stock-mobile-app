import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stockflow/core/mock/mock_config.dart';
import 'package:stockflow/core/mock/mock_data_store.dart';
import 'package:stockflow/core/mock/mock_delay.dart';
import 'package:stockflow/core/network/dio_client.dart';
import 'package:stockflow/core/network/interceptors/error_interceptor.dart';
import 'package:stockflow/features/inventory/data/models/stock_level_model.dart';

/// Remote data source for stock level endpoints.
@lazySingleton
class InventoryRemoteDataSource {
  InventoryRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<StockLevelModel>> getStockLevels({String? warehouseId}) async {
    if (MockConfig.enabled) {
      await mockDelay();
      if (warehouseId == null) return MockDataStore.stockLevels;
      return MockDataStore.stockLevels
          .where((sl) => sl.warehouseId == warehouseId)
          .toList();
    }

    try {
      final response = await _client.dio.get<dynamic>(
        '/stock-levels',
        queryParameters: {
          if (warehouseId != null) 'warehouse_id': warehouseId,
        },
      );
      final items = _extractList(response.data);
      return items
          .map((item) => StockLevelModel.fromJson(item as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<StockLevelModel> getStockLevel(String id) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.stockLevels.firstWhere(
        (sl) => sl.id == id,
        orElse: () => MockDataStore.stockLevels.first,
      );
    }

    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/stock-levels/$id');
      final data = response.data!;
      if (data['data'] is Map<String, dynamic>) {
        return StockLevelModel.fromJson(data['data'] as Map<String, dynamic>);
      }
      return StockLevelModel.fromJson(data);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  List<dynamic> _extractList(dynamic raw) {
    if (raw is List<dynamic>) return raw;
    if (raw is Map<String, dynamic>) {
      return raw['data'] as List<dynamic>? ??
          raw['stock_levels'] as List<dynamic>? ??
          [];
    }
    return [];
  }
}
