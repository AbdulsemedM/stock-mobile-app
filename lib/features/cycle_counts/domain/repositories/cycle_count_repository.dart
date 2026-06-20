import '../../../../core/utils/result.dart';
import '../entities/cycle_count.dart';

/// Contract for cycle count operations.
abstract class CycleCountRepository {
  Future<Result<List<CycleCount>>> getCycleCounts();

  Future<Result<CycleCount>> getCycleCount(String id);

  Future<Result<void>> submitCountEntry({
    required String cycleCountId,
    required String barcode,
    required int quantity,
  });
}
