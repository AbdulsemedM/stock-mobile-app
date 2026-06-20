import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stockflow/core/mock/mock_config.dart';
import 'package:stockflow/core/mock/mock_data_store.dart';
import 'package:stockflow/core/mock/mock_delay.dart';
import 'package:stockflow/core/network/dio_client.dart';
import 'package:stockflow/core/network/interceptors/error_interceptor.dart';
import 'package:stockflow/features/products/data/models/product_model.dart';

/// Remote data source for product catalog endpoints.
@lazySingleton
class ProductRemoteDataSource {
  ProductRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<ProductModel>> getProducts() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.products;
    }

    try {
      final response = await _client.dio.get<dynamic>('/products');
      final items = _extractList(response.data);
      return items
          .map((item) => ProductModel.fromJson(item as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<ProductModel> getProduct(String id) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.productById(id) ?? MockDataStore.products.first;
    }

    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/products/$id');
      final data = response.data!;
      if (data['data'] is Map<String, dynamic>) {
        return ProductModel.fromJson(data['data'] as Map<String, dynamic>);
      }
      return ProductModel.fromJson(data);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  List<dynamic> _extractList(dynamic raw) {
    if (raw is List<dynamic>) return raw;
    if (raw is Map<String, dynamic>) {
      return raw['data'] as List<dynamic>? ??
          raw['products'] as List<dynamic>? ??
          [];
    }
    return [];
  }
}
