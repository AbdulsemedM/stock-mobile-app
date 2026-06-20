import 'package:injectable/injectable.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/cycle_count.dart';
import '../../domain/repositories/cycle_count_repository.dart';
import '../datasources/cycle_count_remote_datasource.dart';

/// Implementation of [CycleCountRepository].
@LazySingleton(as: CycleCountRepository)
class CycleCountRepositoryImpl implements CycleCountRepository {
  CycleCountRepositoryImpl(this._remote);

  final CycleCountRemoteDataSource _remote;

  @override
  Future<Result<List<CycleCount>>> getCycleCounts() {
    return catchException(() async {
      final models = await _remote.getCycleCounts();
      return models.map((m) => m.toEntity()).toList();
    });
  }

  @override
  Future<Result<CycleCount>> getCycleCount(String id) {
    return catchException(() async {
      final model = await _remote.getCycleCount(id);
      return model.toEntity();
    });
  }

  @override
  Future<Result<void>> submitCountEntry({
    required String cycleCountId,
    required String barcode,
    required int quantity,
  }) {
    return catchException(() async {
      await _remote.submitCountEntry(
        cycleCountId: cycleCountId,
        barcode: barcode,
        quantity: quantity,
      );
    });
  }
}
