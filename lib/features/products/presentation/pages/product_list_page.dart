import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:stockflow/core/di/injection.dart';
import 'package:stockflow/core/theme/app_spacing.dart';
import 'package:stockflow/core/utils/state_status.dart';
import 'package:stockflow/core/widgets/feedback/app_snackbar.dart';
import 'package:stockflow/core/widgets/feedback/empty_state_view.dart';
import 'package:stockflow/core/widgets/feedback/error_state_view.dart';
import 'package:stockflow/core/widgets/feedback/loading_indicator.dart';
import 'package:stockflow/core/widgets/inputs/app_text_field.dart';
import 'package:stockflow/features/products/domain/entities/product.dart';
import 'package:stockflow/features/products/presentation/bloc/products_bloc.dart';
import 'package:stockflow/features/products/presentation/bloc/products_event.dart';
import 'package:stockflow/features/products/presentation/bloc/products_state.dart';
import 'package:stockflow/features/products/presentation/widgets/product_list_tile.dart';

/// Product catalog list with search.
class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductsBloc>()..add(const ProductsEvent.loadRequested()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Products')),
        body: BlocConsumer<ProductsBloc, ProductsState>(
          listener: (context, state) {
            if (state.errorMessage != null &&
                state.status == StateStatus.failure &&
                state.products.isEmpty) {
              return;
            }
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context
                    .read<ProductsBloc>()
                    .add(const ProductsEvent.loadRequested()),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading && state.products.isEmpty) {
              return const LoadingIndicator.list();
            }

            if (state.status == StateStatus.failure && state.products.isEmpty) {
              return ErrorStateView(
                title: 'Unable to load products',
                description: state.errorMessage ?? 'Please try again',
                onRetry: () => context
                    .read<ProductsBloc>()
                    .add(const ProductsEvent.loadRequested()),
              );
            }

            final filteredProducts = state.filteredProducts;

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppSpacing.base),
                  child: AppTextField(
                    controller: _searchController,
                    hint: 'Search by name, SKU, or barcode',
                    prefixIcon: const Icon(Icons.search),
                    onChanged: (query) => context
                        .read<ProductsBloc>()
                        .add(ProductsEvent.searchChanged(query)),
                  ),
                ),
                Expanded(
                  child: _buildProductList(context, state, filteredProducts),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildProductList(
    BuildContext context,
    ProductsState state,
    List<Product> filteredProducts,
  ) {
    if (state.products.isEmpty) {
      return EmptyStateView(
        icon: LucideIcons.package,
        title: 'No products yet',
        description: 'Products added to your catalog will appear here.',
        actionLabel: 'Refresh',
        onAction: () => context
            .read<ProductsBloc>()
            .add(const ProductsEvent.loadRequested()),
      );
    }

    if (filteredProducts.isEmpty) {
      return EmptyStateView(
        icon: LucideIcons.search,
        title: 'No matching products',
        description: 'Try a different search term or clear the search field.',
        actionLabel: 'Clear Search',
        onAction: () {
          _searchController.clear();
          context
              .read<ProductsBloc>()
              .add(const ProductsEvent.searchChanged(''));
        },
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<ProductsBloc>().add(const ProductsEvent.loadRequested());
        await context.read<ProductsBloc>().stream.firstWhere(
              (state) => state.status != StateStatus.loading,
            );
      },
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.base,
          0,
          AppSpacing.base,
          AppSpacing.base,
        ),
        itemCount: filteredProducts.length,
        separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
        itemBuilder: (context, index) {
          return ProductListTile(product: filteredProducts[index]);
        },
      ),
    );
  }
}
