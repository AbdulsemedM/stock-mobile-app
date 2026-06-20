import '../../../../core/utils/result.dart';
import '../entities/purchase_order.dart';

/// Contract for purchase order operations.
abstract class PurchaseOrderRepository {
  Future<Result<List<PurchaseOrder>>> getPurchaseOrders();

  Future<Result<PurchaseOrder>> getPurchaseOrder(String id);

  Future<Result<PurchaseOrder>> receiveItem({
    required String purchaseOrderId,
    required String barcode,
    required int quantity,
  });
}
