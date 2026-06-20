import 'package:stockflow/core/utils/result.dart';
import 'package:stockflow/features/inventory/domain/entities/stock_level.dart';

/// Contract for inventory and stock level operations.
abstract class InventoryRepository {
  Future<Result<List<StockLevel>>> getStockLevels({String? warehouseId});

  Future<Result<StockLevel>> getStockLevel(String id);
}
