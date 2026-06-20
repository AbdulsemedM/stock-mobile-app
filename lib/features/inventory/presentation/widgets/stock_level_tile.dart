import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:stockflow/app/router/route_paths.dart';
import 'package:stockflow/core/theme/app_colors.dart';
import 'package:stockflow/core/theme/app_spacing.dart';
import 'package:stockflow/core/widgets/layout/app_card.dart';
import 'package:stockflow/core/widgets/layout/status_badge.dart';
import 'package:stockflow/features/inventory/domain/entities/stock_level.dart';

/// List row for a stock level in inventory.
class StockLevelTile extends StatelessWidget {
  const StockLevelTile({
    required this.stockLevel,
    super.key,
  });

  final StockLevel stockLevel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLow = stockLevel.availableQuantity <= 0;

    return AppCard(
      onTap: () => context.push('${RoutePaths.inventory}/${stockLevel.id}'),
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.neutral100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              LucideIcons.boxes,
              color: AppColors.neutral400,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stockLevel.productName,
                  style: theme.textTheme.titleSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  stockLevel.sku,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.neutral600,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  '${stockLevel.warehouseName} · ${stockLevel.binCode}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.neutral600,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${stockLevel.availableQuantity}',
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'avail',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: AppColors.neutral600,
                ),
              ),
              if (isLow) ...[
                const SizedBox(height: AppSpacing.xs),
                const StatusBadge(status: 'low stock'),
              ],
            ],
          ),
          const SizedBox(width: AppSpacing.sm),
          const Icon(
            LucideIcons.chevronRight,
            color: AppColors.neutral400,
            size: 20,
          ),
        ],
      ),
    );
  }
}
