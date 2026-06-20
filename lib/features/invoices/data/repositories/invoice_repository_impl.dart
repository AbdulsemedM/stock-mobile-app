import 'package:injectable/injectable.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/invoice.dart';
import '../../domain/repositories/invoice_repository.dart';
import '../datasources/invoice_remote_datasource.dart';

/// Implementation of [InvoiceRepository].
@LazySingleton(as: InvoiceRepository)
class InvoiceRepositoryImpl implements InvoiceRepository {
  InvoiceRepositoryImpl(this._remote);

  final InvoiceRemoteDataSource _remote;

  @override
  Future<Result<List<Invoice>>> getInvoices() {
    return catchException(() async {
      final models = await _remote.getInvoices();
      return models.map((m) => m.toEntity()).toList();
    });
  }

  @override
  Future<Result<Invoice>> getInvoice(String id) {
    return catchException(() async {
      final model = await _remote.getInvoice(id);
      return model.toEntity();
    });
  }
}
