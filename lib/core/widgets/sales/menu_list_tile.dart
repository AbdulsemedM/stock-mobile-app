import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../layout/app_card.dart';

/// Menu list item with icon, label, and chevron.
class MenuListTile extends StatelessWidget {
  const MenuListTile({
    required this.icon,
    required this.label,
    this.onTap,
    super.key,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      padding: EdgeInsets.zero,
      child: ListTile(
        leading: Icon(icon, color: AppColors.primary, size: 22),
        title: Text(label),
        trailing: const Icon(
          Icons.chevron_right,
          color: AppColors.neutral400,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.base,
          vertical: AppSpacing.xs,
        ),
      ),
    );
  }
}

/// Two-column stat card for low stock reminders.
class StatCard extends StatelessWidget {
  const StatCard({
    required this.label,
    required this.value,
    this.onTap,
    super.key,
  });

  final String label;
  final String value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppCard(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      color: AppColors.neutral600,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    value,
                    style: const TextStyle(
                      color: AppColors.error,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.neutral400,
            ),
          ],
        ),
      ),
    );
  }
}
