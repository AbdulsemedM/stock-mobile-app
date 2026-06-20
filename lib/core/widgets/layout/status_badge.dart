import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';

/// Pill-shaped status chip for orders, POs, and invoices.
class StatusBadge extends StatelessWidget {
  const StatusBadge({required this.status, super.key});

  final String status;

  @override
  Widget build(BuildContext context) {
    final normalized = status.toLowerCase().replaceAll(' ', '_');
    final colors = _colorsForStatus(normalized);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: colors.$1,
        borderRadius: BorderRadius.circular(AppRadius.full),
      ),
      child: Text(
        _displayLabel(status),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: colors.$2,
            ),
      ),
    );
  }

  (Color, Color) _colorsForStatus(String normalized) {
    const successStatuses = {'received', 'completed', 'paid', 'shipped'};
    const warningStatuses = {
      'backordered',
      'partially_received',
      'overdue',
      'partial',
    };
    const errorStatuses = {'cancelled', 'void', 'canceled'};

    if (successStatuses.contains(normalized)) {
      return (AppColors.successBg, AppColors.success);
    }
    if (warningStatuses.contains(normalized)) {
      return (AppColors.warningBg, AppColors.warning);
    }
    if (errorStatuses.contains(normalized)) {
      return (AppColors.errorBg, AppColors.error);
    }
    return (AppColors.neutral100, AppColors.neutral600);
  }

  String _displayLabel(String raw) {
    return raw
        .replaceAll('_', ' ')
        .split(' ')
        .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
        .join(' ');
  }
}
