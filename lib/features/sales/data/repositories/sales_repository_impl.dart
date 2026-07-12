import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/mock/mock_config.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/mock/mock_delay.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/sales_entities.dart';
import '../../domain/repositories/sales_repository.dart';

@LazySingleton(as: SalesRepository)
class SalesRepositoryImpl implements SalesRepository {
  SalesRepositoryImpl(this._client);

  final DioClient _client;

  @override
  Future<Result<SalesHomeData>> getHomeData() async {
    if (MockConfig.enabled) {
      await mockDelay();
      final s = MockDataStore.salesHomeSummary;
      return Success(SalesHomeData(
        salesTotal: s.salesTotal,
        expiringCount: s.expiringCount,
        lowStockWarehouse: s.lowStockWarehouse,
        lowStockShop: s.lowStockShop,
      ));
    }
    return _fetchHomeFromApi();
  }

  Future<Result<SalesHomeData>> _fetchHomeFromApi() async {
    try {
      final response = await _client.dio.get<Map<String, dynamic>>('/sales/home');
      final d = response.data!;
      return Success(SalesHomeData(
        salesTotal: (d['sales_total'] as num).toDouble(),
        expiringCount: d['expiring_count'] as int,
        lowStockWarehouse: d['low_stock_warehouse'] as int,
        lowStockShop: d['low_stock_shop'] as int,
      ));
    } catch (e) {
      return FailureResult(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Result<List<StockItem>>> getStockItems({String? locationType}) async {
    if (MockConfig.enabled) {
      await mockDelay();
      var items = MockDataStore.stockItems;
      if (locationType != null) {
        items = items.where((i) => i.$5 == locationType).toList();
      }
      return Success(items.map(_mapStockItem).toList());
    }
    return _fetchStockFromApi(locationType);
  }

  StockItem _mapStockItem(
    (String, String, String, String, String, double, double, String?) item,
  ) {
    return StockItem(
      id: item.$1,
      name: item.$2,
      partNumber: item.$3,
      location: item.$4,
      locationType: item.$5,
      price: item.$6,
      quantity: item.$7,
      imageUrl: item.$8,
    );
  }

  Future<Result<List<StockItem>>> _fetchStockFromApi(String? locationType) async {
    try {
      final response = await _client.dio.get<List<dynamic>>(
        '/stock',
        queryParameters: locationType != null ? {'location': locationType} : null,
      );
      return Success((response.data ?? []).map((e) {
        final m = e as Map<String, dynamic>;
        return StockItem(
          id: m['id'].toString(),
          name: m['name'] as String,
          partNumber: m['part_number'] as String,
          location: m['location'] as String,
          locationType: m['location_type'] as String,
          price: (m['price'] as num).toDouble(),
          quantity: (m['quantity'] as num).toDouble(),
          imageUrl: m['image_url'] as String?,
        );
      }).toList());
    } catch (e) {
      return FailureResult(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Result<List<CreditEntry>>> getCreditEntries({String? query}) async {
    if (MockConfig.enabled) {
      await mockDelay();
      var entries = MockDataStore.creditEntries;
      if (query != null && query.isNotEmpty) {
        final q = query.toLowerCase();
        entries = entries
            .where((e) => e.$2.toLowerCase().contains(q))
            .toList();
      }
      return Success(entries.map((e) => CreditEntry(
            id: e.$1,
            customerName: e.$2,
            amount: e.$3,
            itemCount: e.$4,
            status: e.$5,
            date: e.$6,
          )).toList());
    }
    return _fetchCreditsFromApi(query);
  }

  Future<Result<List<CreditEntry>>> _fetchCreditsFromApi(String? query) async {
    try {
      final response = await _client.dio.get<List<dynamic>>(
        '/credits',
        queryParameters: query != null ? {'q': query} : null,
      );
      return Success((response.data ?? []).map((e) {
        final m = e as Map<String, dynamic>;
        return CreditEntry(
          id: m['id'].toString(),
          customerName: m['customer_name'] as String,
          amount: (m['amount'] as num).toDouble(),
          itemCount: m['item_count'] as int,
          status: m['status'] as String,
          date: DateTime.parse(m['date'] as String),
        );
      }).toList());
    } catch (e) {
      return FailureResult(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Result<double>> getTotalCreditDue() async {
    if (MockConfig.enabled) {
      await mockDelay();
      return Success(MockDataStore.totalCreditDue);
    }
    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/credits/summary');
      return Success((response.data!['total_due'] as num).toDouble());
    } catch (e) {
      return FailureResult(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Result<StoreProfile>> getStoreProfile() async {
    if (MockConfig.enabled) {
      await mockDelay();
      final p = MockDataStore.storeProfile;
      return Success(StoreProfile(name: p.name, address: p.address));
    }
    try {
      final response =
          await _client.dio.get<Map<String, dynamic>>('/store/profile');
      final d = response.data!;
      return Success(StoreProfile(
        name: d['name'] as String,
        address: d['address'] as String,
      ));
    } catch (e) {
      return FailureResult(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Result<List<NamedEntity>>> getCustomers() async {
    return _namedList(MockDataStore.customers.map((c) => NamedEntity(
          id: c.$1,
          title: c.$2,
          subtitle: c.$3,
        )));
  }

  @override
  Future<Result<List<NamedEntity>>> getExpenses() async {
    return _namedList(MockDataStore.expenses.map((e) => NamedEntity(
          id: e.$1,
          title: e.$2,
          trailing: e.$3,
          subtitle: e.$4,
        )));
  }

  @override
  Future<Result<List<NamedEntity>>> getCollections() async {
    return _namedList(MockDataStore.collections.map((c) => NamedEntity(
          id: c.$1,
          title: c.$2,
          trailing: c.$3,
          subtitle: c.$4,
        )));
  }

  @override
  Future<Result<List<NamedEntity>>> getSuppliers() async {
    return _namedList(MockDataStore.suppliers.map((s) => NamedEntity(
          id: s.$1,
          title: s.$2,
          subtitle: s.$3,
        )));
  }

  @override
  Future<Result<List<NamedEntity>>> getBranches() async {
    return _namedList(MockDataStore.branches.map((b) => NamedEntity(
          id: b.$1,
          title: b.$2,
          subtitle: b.$3,
        )));
  }

  @override
  Future<Result<List<NamedEntity>>> getUsers() async {
    return _namedList(MockDataStore.users.map((u) => NamedEntity(
          id: u.$1,
          title: u.$2,
          subtitle: u.$3,
        )));
  }

  @override
  Future<Result<List<NamedEntity>>> getSalesHistory() async {
    return _namedList(MockDataStore.salesHistory.map((s) => NamedEntity(
          id: s.$1,
          title: s.$2,
          trailing: s.$3,
          subtitle: s.$4,
        )));
  }

  @override
  Future<Result<List<NamedEntity>>> getGeneralHistory() async {
    return _namedList(MockDataStore.generalHistory.map((g) => NamedEntity(
          id: g.$1,
          title: g.$2,
          subtitle: g.$3,
          trailing: g.$4,
        )));
  }

  Future<Result<List<NamedEntity>>> _namedList(
    Iterable<NamedEntity> items,
  ) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return Success(items.toList());
    }
    return Success(items.toList());
  }

  @override
  Future<Result<void>> submitSale({
    required List<SaleLineItem> lines,
    String? customerName,
    String paymentType = 'cash',
  }) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return const Success(null);
    }
    try {
      await _client.dio.post<Map<String, dynamic>>('/sales', data: {
        'lines': lines
            .map((l) => {
                  'product_id': l.productId,
                  'quantity': l.quantity,
                  'price': l.price,
                })
            .toList(),
        'customer_name': customerName,
        'payment_type': paymentType,
      });
      return const Success(null);
    } catch (e) {
      return FailureResult(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Result<void>> addStock({
    required String productId,
    required String locationType,
    required double quantity,
  }) async {
    if (MockConfig.enabled) {
      await mockDelay();
      return const Success(null);
    }
    try {
      await _client.dio.post<Map<String, dynamic>>('/stock', data: {
        'product_id': productId,
        'location_type': locationType,
        'quantity': quantity,
      });
      return const Success(null);
    } catch (e) {
      return FailureResult(UnknownFailure(e.toString()));
    }
  }
}
