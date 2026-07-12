import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';

/// Horizontal filter/sort/collection action bar.
class FilterSortBar extends StatelessWidget {
  const FilterSortBar({
    this.showCollection = true,
    this.onFilter,
    this.onSort,
    this.onCollection,
    super.key,
  });

  final bool showCollection;
  final VoidCallback? onFilter;
  final VoidCallback? onSort;
  final VoidCallback? onCollection;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.neutral200),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: _ActionItem(
              icon: LucideIcons.filter,
              label: 'Filter',
              onTap: onFilter,
            ),
          ),
          _divider(),
          Expanded(
            child: _ActionItem(
              icon: LucideIcons.arrowDownWideNarrow,
              label: 'Sort by',
              onTap: onSort,
            ),
          ),
          if (showCollection) ...[
            _divider(),
            Expanded(
              child: _ActionItem(
                icon: LucideIcons.slidersHorizontal,
                label: 'Collection',
                onTap: onCollection,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _divider() => Container(
        width: 1,
        height: 24,
        color: AppColors.neutral200,
      );
}

class _ActionItem extends StatelessWidget {
  const _ActionItem({
    required this.icon,
    required this.label,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 16, color: AppColors.neutral600),
          const SizedBox(width: AppSpacing.xs),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.neutral600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
