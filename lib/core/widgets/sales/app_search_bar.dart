import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';
import '../../theme/app_spacing.dart';

/// Search bar with optional scan action, used across salesperson screens.
class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    this.hint = 'Search',
    this.controller,
    this.onChanged,
    this.onScan,
    super.key,
  });

  final String hint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onScan;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: AppColors.neutral200),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(color: AppColors.neutral400),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.neutral400,
                  size: 22,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.base,
                  vertical: AppSpacing.md,
                ),
              ),
            ),
          ),
          if (onScan != null) ...[
            Container(
              width: 1,
              height: 32,
              color: AppColors.neutral200,
            ),
            IconButton(
              onPressed: onScan,
              icon: const Icon(
                LucideIcons.scanLine,
                color: AppColors.primary,
                size: 22,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
