import 'package:injectable/injectable.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/pick_task.dart';
import '../../domain/repositories/picking_repository.dart';
import '../datasources/picking_remote_datasource.dart';

/// Implementation of [PickingRepository].
@LazySingleton(as: PickingRepository)
class PickingRepositoryImpl implements PickingRepository {
  PickingRepositoryImpl(this._remote);

  final PickingRemoteDataSource _remote;

  @override
  Future<Result<List<PickTask>>> getPickTasks(String salesOrderId) {
    return catchException(() async {
      final models = await _remote.getPickTasks(salesOrderId);
      return models.map((m) => m.toEntity()).toList();
    });
  }

  @override
  Future<Result<void>> confirmPick({
    required String salesOrderId,
    required String pickTaskId,
    required String barcode,
    required int quantity,
  }) {
    return catchException(() async {
      await _remote.confirmPick(
        salesOrderId: salesOrderId,
        pickTaskId: pickTaskId,
        barcode: barcode,
        quantity: quantity,
      );
    });
  }
}
