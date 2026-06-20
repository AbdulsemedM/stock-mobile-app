import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/invoice_model.dart';

/// Remote data source for invoice endpoints.
@lazySingleton
class InvoiceRemoteDataSource {
  InvoiceRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<InvoiceModel>> getInvoices() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.invoices;
    }

    try {
      final response = await _client.dio.get<List<dynamic>>('/invoices');
      return (response.data ?? [])
          .map((e) => InvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<InvoiceModel> getInvoice(String id) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.invoices.firstWhere(
        (inv) => inv.id == id,
        orElse: () => MockDataStore.invoices.first,
      );
    }

    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/invoices/$id');
      return InvoiceModel.fromJson(response.data!);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
