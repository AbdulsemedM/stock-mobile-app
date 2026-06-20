import 'package:stockflow/core/utils/result.dart';
import 'package:stockflow/features/products/domain/entities/product.dart';

/// Contract for product catalog operations.
abstract class ProductRepository {
  Future<Result<List<Product>>> getProducts();

  Future<Result<Product>> getProduct(String id);
}
