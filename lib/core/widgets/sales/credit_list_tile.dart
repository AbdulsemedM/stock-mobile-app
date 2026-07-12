import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../utils/formatters.dart';

/// Credit/unpaid transaction list tile.
class CreditListTile extends StatelessWidget {
  const CreditListTile({
    required this.customerName,
    required this.amount,
    required this.itemCount,
    required this.status,
    required this.date,
    this.onTap,
    super.key,
  });

  final String customerName;
  final double amount;
  final int itemCount;
  final String status;
  final DateTime date;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isUnpaid = status.toLowerCase() == 'unpaid';
    final dateStr = DateFormat('MMM d, yyyy hh:mm a').format(date);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.base,
          vertical: AppSpacing.md,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    customerName,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  Formatters.currency(amount),
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xs),
            Row(
              children: [
                Text(
                  '$itemCount Items',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.neutral600,
                  ),
                ),
                const Spacer(),
                if (isUnpaid)
                  Text(
                    'UNPAID',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: AppColors.warning,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: AppSpacing.xs),
            Row(
              children: [
                Text(
                  dateStr,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.neutral400,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Text(
                  '${Formatters.currency(amount)}^$status',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.warning,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
