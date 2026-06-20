import 'package:injectable/injectable.dart';
import 'package:stockflow/core/utils/repository_helper.dart';
import 'package:stockflow/core/utils/result.dart';
import 'package:stockflow/features/products/data/datasources/product_remote_datasource.dart';
import 'package:stockflow/features/products/domain/entities/product.dart';
import 'package:stockflow/features/products/domain/repositories/product_repository.dart';

/// Implementation of [ProductRepository].
@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl(this._remote);

  final ProductRemoteDataSource _remote;

  @override
  Future<Result<List<Product>>> getProducts() async {
    return catchException(() async {
      final models = await _remote.getProducts();
      return models.map((model) => model.toEntity()).toList();
    });
  }

  @override
  Future<Result<Product>> getProduct(String id) async {
    return catchException(() async {
      final model = await _remote.getProduct(id);
      return model.toEntity();
    });
  }
}
