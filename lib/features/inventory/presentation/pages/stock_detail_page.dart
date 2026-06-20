import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:stockflow/core/di/injection.dart';
import 'package:stockflow/core/theme/app_colors.dart';
import 'package:stockflow/core/theme/app_spacing.dart';
import 'package:stockflow/core/utils/state_status.dart';
import 'package:stockflow/core/widgets/feedback/app_snackbar.dart';
import 'package:stockflow/core/widgets/feedback/error_state_view.dart';
import 'package:stockflow/core/widgets/feedback/loading_indicator.dart';
import 'package:stockflow/core/widgets/layout/app_card.dart';
import 'package:stockflow/core/widgets/layout/status_badge.dart';
import 'package:stockflow/features/inventory/domain/entities/stock_level.dart';
import 'package:stockflow/features/inventory/presentation/bloc/inventory_bloc.dart';
import 'package:stockflow/features/inventory/presentation/bloc/inventory_event.dart';
import 'package:stockflow/features/inventory/presentation/bloc/inventory_state.dart';

/// Stock level detail screen.
class StockDetailPage extends StatelessWidget {
  const StockDetailPage({
    required this.stockLevelId,
    super.key,
  });

  final String stockLevelId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<InventoryBloc>()
        ..add(InventoryEvent.loadRequested(stockLevelId: stockLevelId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Stock Detail')),
        body: BlocConsumer<InventoryBloc, InventoryState>(
          listener: (context, state) {
            if (state.errorMessage != null &&
                state.status == StateStatus.failure &&
                state.selectedStockLevel == null) {
              return;
            }
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context.read<InventoryBloc>().add(
                      InventoryEvent.loadRequested(stockLevelId: stockLevelId),
                    ),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.selectedStockLevel == null) {
              return const LoadingIndicator();
            }

            if (state.status == StateStatus.failure &&
                state.selectedStockLevel == null) {
              return ErrorStateView(
                title: 'Unable to load stock level',
                description: state.errorMessage ?? 'Please try again',
                onRetry: () => context.read<InventoryBloc>().add(
                      InventoryEvent.loadRequested(stockLevelId: stockLevelId),
                    ),
              );
            }

            final stockLevel = state.selectedStockLevel;
            if (stockLevel == null) {
              return ErrorStateView(
                title: 'Stock level not found',
                description:
                    'This stock record may have been removed or relocated.',
                onRetry: () => context.read<InventoryBloc>().add(
                      InventoryEvent.loadRequested(stockLevelId: stockLevelId),
                    ),
              );
            }

            return _StockDetailBody(stockLevel: stockLevel);
          },
        ),
      ),
    );
  }
}

class _StockDetailBody extends StatelessWidget {
  const _StockDetailBody({required this.stockLevel});

  final StockLevel stockLevel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLow = stockLevel.availableQuantity <= 0;

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.base),
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.neutral100,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(
            LucideIcons.boxes,
            size: 64,
            color: AppColors.neutral400,
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        Row(
          children: [
            Expanded(
              child: Text(
                stockLevel.productName,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            if (isLow) const StatusBadge(status: 'low stock'),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          stockLevel.sku,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: AppColors.neutral600,
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        AppCard(
          child: Column(
            children: [
              _DetailRow(label: 'On Hand', value: '${stockLevel.quantity}'),
              const Divider(height: AppSpacing.lg),
              _DetailRow(
                label: 'Reserved',
                value: '${stockLevel.reservedQuantity}',
              ),
              const Divider(height: AppSpacing.lg),
              _DetailRow(
                label: 'Available',
                value: '${stockLevel.availableQuantity}',
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.base),
        AppCard(
          child: Column(
            children: [
              _DetailRow(
                label: 'Warehouse',
                value: stockLevel.warehouseName,
              ),
              const Divider(height: AppSpacing.lg),
              _DetailRow(label: 'Bin', value: stockLevel.binCode),
              const Divider(height: AppSpacing.lg),
              _DetailRow(label: 'Product ID', value: stockLevel.productId),
            ],
          ),
        ),
      ],
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
