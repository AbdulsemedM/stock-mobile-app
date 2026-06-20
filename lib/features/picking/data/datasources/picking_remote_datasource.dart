import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/pick_task_model.dart';

/// Remote data source for pick task endpoints.
@lazySingleton
class PickingRemoteDataSource {
  PickingRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<PickTaskModel>> getPickTasks(String salesOrderId) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.pickTasksForOrder(salesOrderId);
    }

    try {
      final response = await _client.dio.get<List<dynamic>>(
        '/sales-orders/$salesOrderId/pick-tasks',
      );
      return (response.data ?? [])
          .map((e) => PickTaskModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<void> confirmPick({
    required String salesOrderId,
    required String pickTaskId,
    required String barcode,
    required int quantity,
  }) async {
    if (MockConfig.enabled) {
      await mockDelay();
      MockDataStore.confirmPick(
        salesOrderId: salesOrderId,
        pickTaskId: pickTaskId,
        quantity: quantity,
      );
      return;
    }

    try {
      await _client.dio.post<void>(
        '/sales-orders/$salesOrderId/pick-tasks/$pickTaskId/confirm',
        data: {'barcode': barcode, 'quantity': quantity},
      );
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
