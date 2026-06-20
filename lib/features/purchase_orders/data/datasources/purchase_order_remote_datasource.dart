import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/purchase_order_model.dart';

/// Remote data source for purchase order endpoints.
@lazySingleton
class PurchaseOrderRemoteDataSource {
  PurchaseOrderRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<PurchaseOrderModel>> getPurchaseOrders() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.purchaseOrders;
    }

    try {
      final response = await _client.dio.get<List<dynamic>>('/purchase-orders');
      return (response.data ?? [])
          .map((e) => PurchaseOrderModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<PurchaseOrderModel> getPurchaseOrder(String id) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.purchaseOrderById(id) ??
          MockDataStore.purchaseOrders.first;
    }

    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/purchase-orders/$id');
      return PurchaseOrderModel.fromJson(response.data!);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<PurchaseOrderModel> receiveItem({
    required String purchaseOrderId,
    required String barcode,
    required int quantity,
  }) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.receivePurchaseOrderItem(
        purchaseOrderId: purchaseOrderId,
        barcode: barcode,
        quantity: quantity,
      );
    }

    try {
      final response = await _client.dio.post<Map<String, dynamic>>(
        '/purchase-orders/$purchaseOrderId/receive',
        data: {
          'barcode': barcode,
          'quantity': quantity,
        },
      );
      return PurchaseOrderModel.fromJson(response.data!);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
