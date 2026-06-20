import '../../../../core/utils/result.dart';
import '../entities/sales_order.dart';

/// Contract for sales order operations.
abstract class SalesOrderRepository {
  Future<Result<List<SalesOrder>>> getSalesOrders();

  Future<Result<SalesOrder>> getSalesOrder(String id);
}
