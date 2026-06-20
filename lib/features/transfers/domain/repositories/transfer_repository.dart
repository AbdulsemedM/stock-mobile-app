import '../../../../core/utils/result.dart';
import '../entities/stock_transfer.dart';

/// Contract for stock transfer operations.
abstract class TransferRepository {
  Future<Result<List<StockTransfer>>> getStockTransfers();

  Future<Result<StockTransfer>> getStockTransfer(String id);
}
