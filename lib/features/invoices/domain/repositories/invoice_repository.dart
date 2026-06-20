import '../../../../core/utils/result.dart';
import '../entities/invoice.dart';

/// Contract for invoice operations.
abstract class InvoiceRepository {
  Future<Result<List<Invoice>>> getInvoices();

  Future<Result<Invoice>> getInvoice(String id);
}
