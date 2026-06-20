import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockflow/core/utils/state_status.dart';
import 'package:stockflow/features/products/domain/entities/product.dart';

part 'products_state.freezed.dart';

/// State for the products catalog feature.
@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<Product> products,
    Product? selectedProduct,
    String? errorMessage,
    @Default('') String searchQuery,
  }) = _ProductsState;
}

/// Local search filtering for the product catalog list.
extension ProductsStateFiltering on ProductsState {
  List<Product> get filteredProducts {
    if (searchQuery.isEmpty) return products;

    final query = searchQuery.toLowerCase();
    return products.where((product) {
      return product.name.toLowerCase().contains(query) ||
          product.sku.toLowerCase().contains(query) ||
          product.description.toLowerCase().contains(query) ||
          (product.barcode?.toLowerCase().contains(query) ?? false);
    }).toList();
  }
}
