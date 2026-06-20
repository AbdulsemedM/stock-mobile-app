import 'package:injectable/injectable.dart';
import 'package:stockflow/core/utils/repository_helper.dart';
import 'package:stockflow/core/utils/result.dart';
import 'package:stockflow/features/inventory/data/datasources/inventory_remote_datasource.dart';
import 'package:stockflow/features/inventory/domain/entities/stock_level.dart';
import 'package:stockflow/features/inventory/domain/repositories/inventory_repository.dart';

/// Implementation of [InventoryRepository].
@LazySingleton(as: InventoryRepository)
class InventoryRepositoryImpl implements InventoryRepository {
  InventoryRepositoryImpl(this._remote);

  final InventoryRemoteDataSource _remote;

  @override
  Future<Result<List<StockLevel>>> getStockLevels({String? warehouseId}) {
    return catchException(() async {
      final models = await _remote.getStockLevels(warehouseId: warehouseId);
      return models.map((model) => model.toEntity()).toList();
    });
  }

  @override
  Future<Result<StockLevel>> getStockLevel(String id) {
    return catchException(() async {
      final model = await _remote.getStockLevel(id);
      return model.toEntity();
    });
  }
}
