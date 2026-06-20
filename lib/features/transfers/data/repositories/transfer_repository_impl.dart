import 'package:injectable/injectable.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/stock_transfer.dart';
import '../../domain/repositories/transfer_repository.dart';
import '../datasources/transfer_remote_datasource.dart';

/// Implementation of [TransferRepository].
@LazySingleton(as: TransferRepository)
class TransferRepositoryImpl implements TransferRepository {
  TransferRepositoryImpl(this._remote);

  final TransferRemoteDataSource _remote;

  @override
  Future<Result<List<StockTransfer>>> getStockTransfers() {
    return catchException(() async {
      final models = await _remote.getStockTransfers();
      return models.map((m) => m.toEntity()).toList();
    });
  }

  @override
  Future<Result<StockTransfer>> getStockTransfer(String id) {
    return catchException(() async {
      final model = await _remote.getStockTransfer(id);
      return model.toEntity();
    });
  }
}
