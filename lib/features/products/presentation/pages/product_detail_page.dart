import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:stockflow/core/di/injection.dart';
import 'package:stockflow/core/theme/app_colors.dart';
import 'package:stockflow/core/theme/app_spacing.dart';
import 'package:stockflow/core/utils/formatters.dart';
import 'package:stockflow/core/utils/state_status.dart';
import 'package:stockflow/core/widgets/feedback/app_snackbar.dart';
import 'package:stockflow/core/widgets/feedback/error_state_view.dart';
import 'package:stockflow/core/widgets/feedback/loading_indicator.dart';
import 'package:stockflow/core/widgets/layout/app_card.dart';
import 'package:stockflow/features/products/domain/entities/product.dart';
import 'package:stockflow/features/products/presentation/bloc/products_bloc.dart';
import 'package:stockflow/features/products/presentation/bloc/products_event.dart';
import 'package:stockflow/features/products/presentation/bloc/products_state.dart';

/// Product detail screen for a single catalog item.
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    required this.productId,
    super.key,
  });

  final String productId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductsBloc>()
        ..add(ProductsEvent.loadRequested(productId: productId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Product Details')),
        body: BlocConsumer<ProductsBloc, ProductsState>(
          listener: (context, state) {
            if (state.errorMessage != null &&
                state.status == StateStatus.failure &&
                state.selectedProduct == null) {
              return;
            }
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context.read<ProductsBloc>().add(
                      ProductsEvent.loadRequested(productId: productId),
                    ),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.selectedProduct == null) {
              return const LoadingIndicator();
            }

            if (state.status == StateStatus.failure &&
                state.selectedProduct == null) {
              return ErrorStateView(
                title: 'Unable to load product',
                description: state.errorMessage ?? 'Please try again',
                onRetry: () => context.read<ProductsBloc>().add(
                      ProductsEvent.loadRequested(productId: productId),
                    ),
              );
            }

            final product = state.selectedProduct;
            if (product == null) {
              return ErrorStateView(
                title: 'Product not found',
                description: 'This product may have been removed from the catalog.',
                onRetry: () => context.read<ProductsBloc>().add(
                      ProductsEvent.loadRequested(productId: productId),
                    ),
              );
            }

            return _ProductDetailBody(product: product);
          },
        ),
      ),
    );
  }
}

class _ProductDetailBody extends StatelessWidget {
  const _ProductDetailBody({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.base),
      children: [
        _ProductHeroImage(imageUrl: product.imageUrl),
        const SizedBox(height: AppSpacing.lg),
        Text(
          product.name,
          style: theme.textTheme.headlineSmall,
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          Formatters.currency(product.unitPrice),
          style: theme.textTheme.titleLarge?.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        AppCard(
          child: Column(
            children: [
              _DetailRow(label: 'SKU', value: product.sku),
              const Divider(height: AppSpacing.lg),
              _DetailRow(
                label: 'Barcode',
                value: product.barcode ?? 'Not assigned',
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.base),
        AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                product.description.isEmpty
                    ? 'No description provided.'
                    : product.description,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.neutral600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProductHeroImage extends StatelessWidget {
  const _ProductHeroImage({this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.neutral100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(
          LucideIcons.package,
          size: 72,
          color: AppColors.neutral400,
        ),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        height: 220,
        width: double.infinity,
        fit: BoxFit.cover,
        placeholder: (_, __) => Container(
          height: 220,
          color: AppColors.neutral100,
          child: const Center(child: CircularProgressIndicator()),
        ),
        errorWidget: (_, __, ___) => Container(
          height: 220,
          color: AppColors.neutral100,
          child: const Icon(
            LucideIcons.imageOff,
            size: 72,
            color: AppColors.neutral400,
          ),
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.neutral600,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
