import 'package:injectable/injectable.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/purchase_order.dart';
import '../../domain/repositories/purchase_order_repository.dart';
import '../datasources/purchase_order_remote_datasource.dart';

/// Implementation of [PurchaseOrderRepository].
@LazySingleton(as: PurchaseOrderRepository)
class PurchaseOrderRepositoryImpl implements PurchaseOrderRepository {
  PurchaseOrderRepositoryImpl(this._remote);

  final PurchaseOrderRemoteDataSource _remote;

  @override
  Future<Result<List<PurchaseOrder>>> getPurchaseOrders() {
    return catchException(() async {
      final models = await _remote.getPurchaseOrders();
      return models.map((model) => model.toEntity()).toList();
    });
  }

  @override
  Future<Result<PurchaseOrder>> getPurchaseOrder(String id) {
    return catchException(() async {
      final model = await _remote.getPurchaseOrder(id);
      return model.toEntity();
    });
  }

  @override
  Future<Result<PurchaseOrder>> receiveItem({
    required String purchaseOrderId,
    required String barcode,
    required int quantity,
  }) {
    return catchException(() async {
      final model = await _remote.receiveItem(
        purchaseOrderId: purchaseOrderId,
        barcode: barcode,
        quantity: quantity,
      );
      return model.toEntity();
    });
  }
}
