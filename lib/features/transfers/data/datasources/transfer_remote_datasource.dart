import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/stock_transfer_model.dart';

/// Remote data source for stock transfer endpoints.
@lazySingleton
class TransferRemoteDataSource {
  TransferRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<StockTransferModel>> getStockTransfers() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.transfers;
    }

    try {
      final response =
          await _client.dio.get<List<dynamic>>('/stock-transfers');
      return (response.data ?? [])
          .map((e) => StockTransferModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<StockTransferModel> getStockTransfer(String id) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.transfers.firstWhere(
        (t) => t.id == id,
        orElse: () => MockDataStore.transfers.first,
      );
    }

    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/stock-transfers/$id');
      return StockTransferModel.fromJson(response.data!);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
