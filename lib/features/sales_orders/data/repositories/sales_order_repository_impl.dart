import 'package:injectable/injectable.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/sales_order.dart';
import '../../domain/repositories/sales_order_repository.dart';
import '../datasources/sales_order_remote_datasource.dart';

/// Implementation of [SalesOrderRepository].
@LazySingleton(as: SalesOrderRepository)
class SalesOrderRepositoryImpl implements SalesOrderRepository {
  SalesOrderRepositoryImpl(this._remote);

  final SalesOrderRemoteDataSource _remote;

  @override
  Future<Result<List<SalesOrder>>> getSalesOrders() {
    return catchException(() async {
      final models = await _remote.getSalesOrders();
      return models.map((m) => m.toEntity()).toList();
    });
  }

  @override
  Future<Result<SalesOrder>> getSalesOrder(String id) {
    return catchException(() async {
      final model = await _remote.getSalesOrder(id);
      return model.toEntity();
    });
  }
}
