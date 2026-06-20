import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/layout/status_badge.dart';
import '../../data/models/dashboard_models.dart';

/// Tile displaying a low-stock product alert.
class LowStockAlertTile extends StatelessWidget {
  const LowStockAlertTile({required this.alert, super.key});

  final LowStockAlert alert;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(LucideIcons.alertTriangle, color: AppColors.warning),
      title: Text(alert.productName, style: Theme.of(context).textTheme.bodyLarge),
      subtitle: Text('SKU: ${alert.sku} · Qty: ${alert.quantity}'),
      trailing: const StatusBadge(status: 'low stock'),
    );
  }
}
