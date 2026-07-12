import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';
import '../../theme/app_spacing.dart';

/// Today's sales summary card on the home screen.
class TodaySummaryCard extends StatelessWidget {
  const TodaySummaryCard({
    required this.salesTotal,
    required this.expiringCount,
    this.onViewReport,
    super.key,
  });

  final String salesTotal;
  final int expiringCount;
  final VoidCallback? onViewReport;

  @override
  Widget build(BuildContext context) {
    final dateLabel = DateFormat('MMM d').format(DateTime.now());

    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today $dateLabel',
            style: const TextStyle(
              color: AppColors.surface,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: AppSpacing.base),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            LucideIcons.clipboardList,
                            color: AppColors.surface,
                            size: 20,
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Text(
                            salesTotal,
                            style: const TextStyle(
                              color: AppColors.surface,
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      if (onViewReport != null)
                        OutlinedButton(
                          onPressed: onViewReport,
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.surface,
                            side: const BorderSide(color: AppColors.surface),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(AppRadius.full),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.base,
                              vertical: AppSpacing.xs,
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('View Report'),
                              SizedBox(width: 4),
                              Icon(LucideIcons.chevronRight, size: 16),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  color: AppColors.surface.withValues(alpha: 0.4),
                  margin: const EdgeInsets.symmetric(horizontal: AppSpacing.base),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '$expiringCount',
                        style: const TextStyle(
                          color: AppColors.surface,
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        'To be expired',
                        style: TextStyle(
                          color: AppColors.surface,
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
