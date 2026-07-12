import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';

/// Wide pill-shaped floating action button.
class PillFab extends StatelessWidget {
  const PillFab({
    required this.label,
    required this.onPressed,
    this.icon = LucideIcons.plus,
    this.backgroundColor,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;
  final IconData icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? AppColors.primary,
      foregroundColor: AppColors.surface,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.full),
      ),
      icon: Icon(icon, size: 20),
      label: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );
  }
}

/// Circular FAB used on credit screen.
class CircleActionFab extends StatelessWidget {
  const CircleActionFab({
    required this.onPressed,
    this.icon = LucideIcons.user,
    super.key,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.surface,
      foregroundColor: AppColors.primary,
      elevation: 4,
      child: Icon(icon, size: 24),
    );
  }
}
