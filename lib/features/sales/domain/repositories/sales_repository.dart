import '../../../../core/utils/result.dart';
import '../entities/sales_entities.dart';

/// Repository for salesperson features.
abstract class SalesRepository {
  Future<Result<SalesHomeData>> getHomeData();
  Future<Result<List<StockItem>>> getStockItems({String? locationType});
  Future<Result<List<CreditEntry>>> getCreditEntries({String? query});
  Future<Result<double>> getTotalCreditDue();
  Future<Result<StoreProfile>> getStoreProfile();
  Future<Result<List<NamedEntity>>> getCustomers();
  Future<Result<List<NamedEntity>>> getExpenses();
  Future<Result<List<NamedEntity>>> getCollections();
  Future<Result<List<NamedEntity>>> getSuppliers();
  Future<Result<List<NamedEntity>>> getBranches();
  Future<Result<List<NamedEntity>>> getUsers();
  Future<Result<List<NamedEntity>>> getSalesHistory();
  Future<Result<List<NamedEntity>>> getGeneralHistory();
  Future<Result<void>> submitSale({
    required List<SaleLineItem> lines,
    String? customerName,
    String paymentType,
  });
  Future<Result<void>> addStock({
    required String productId,
    required String locationType,
    required double quantity,
  });
}
