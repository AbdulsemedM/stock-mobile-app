import '../../../../core/utils/result.dart';
import '../entities/pick_task.dart';

/// Contract for pick task operations.
abstract class PickingRepository {
  Future<Result<List<PickTask>>> getPickTasks(String salesOrderId);

  Future<Result<void>> confirmPick({
    required String salesOrderId,
    required String pickTaskId,
    required String barcode,
    required int quantity,
  });
}
