import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';
import '../../theme/app_spacing.dart';

/// Profile screen header with store branding.
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    required this.storeName,
    required this.address,
    this.logoAsset,
    this.onManual,
    super.key,
  });

  final String storeName;
  final String address;
  final String? logoAsset;
  final VoidCallback? onManual;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.base,
        AppSpacing.xl,
        AppSpacing.base,
        AppSpacing.xxl,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (logoAsset != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.full),
              child: Image.asset(
                logoAsset!,
                width: 56,
                height: 56,
                fit: BoxFit.cover,
              ),
            )
          else
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(AppRadius.full),
              ),
              child: const Icon(
                LucideIcons.store,
                color: AppColors.primary,
              ),
            ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storeName,
                  style: const TextStyle(
                    color: AppColors.surface,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  address,
                  style: TextStyle(
                    color: AppColors.surface.withValues(alpha: 0.85),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.surface),
                    borderRadius: BorderRadius.circular(AppRadius.full),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(LucideIcons.crown, color: AppColors.surface, size: 14),
                      SizedBox(width: 4),
                      Text(
                        'Level',
                        style: TextStyle(color: AppColors.surface, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (onManual != null)
            TextButton.icon(
              onPressed: onManual,
              style: TextButton.styleFrom(
                foregroundColor: AppColors.surface,
                backgroundColor: AppColors.primaryDark,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
              ),
              icon: const Icon(LucideIcons.bookOpen, size: 16),
              label: const Text('Manual', style: TextStyle(fontSize: 12)),
            ),
        ],
      ),
    );
  }
}
