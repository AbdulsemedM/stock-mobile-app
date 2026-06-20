import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/interceptors/error_interceptor.dart';
import '../models/cycle_count_model.dart';

/// Remote data source for cycle count endpoints.
@lazySingleton
class CycleCountRemoteDataSource {
  CycleCountRemoteDataSource(this._client);

  final DioClient _client;

  Future<List<CycleCountModel>> getCycleCounts() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.cycleCounts;
    }

    try {
      final response = await _client.dio.get<List<dynamic>>('/cycle-counts');
      return (response.data ?? [])
          .map((e) => CycleCountModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<CycleCountModel> getCycleCount(String id) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return MockDataStore.cycleCounts.firstWhere(
        (c) => c.id == id,
        orElse: () => MockDataStore.cycleCounts.first,
      );
    }

    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/cycle-counts/$id');
      return CycleCountModel.fromJson(response.data!);
    } on DioException catch (e) {
      throwDioException(e);
    }
  }

  Future<void> submitCountEntry({
    required String cycleCountId,
    required String barcode,
    required int quantity,
  }) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return;
    }

    try {
      await _client.dio.post<void>(
        '/cycle-counts/$cycleCountId/entries',
        data: {'barcode': barcode, 'quantity': quantity},
      );
    } on DioException catch (e) {
      throwDioException(e);
    }
  }
}
