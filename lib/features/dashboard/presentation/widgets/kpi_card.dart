import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/layout/app_card.dart';

/// KPI metric card for the dashboard grid.
class KpiCard extends StatelessWidget {
  const KpiCard({
    required this.label,
    required this.value,
    this.trend,
    super.key,
  });

  final String label;
  final String value;
  final String? trend;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: AppSpacing.sm),
          Text(value, style: Theme.of(context).textTheme.headlineMedium),
          if (trend != null) ...[
            const SizedBox(height: AppSpacing.xs),
            Text(
              trend!,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.success,
                  ),
            ),
          ],
        ],
      ),
    );
  }
}
