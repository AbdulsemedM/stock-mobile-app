import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../theme/app_colors.dart';

/// Dark bottom navigation for salesperson shell.
class SalesBottomNav extends StatelessWidget {
  const SalesBottomNav({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  static const _items = [
    (icon: LucideIcons.layoutGrid, label: 'Home'),
    (icon: LucideIcons.warehouse, label: 'Warehouse'),
    (icon: LucideIcons.store, label: 'Shop'),
    (icon: LucideIcons.wallet, label: 'Credit'),
    (icon: LucideIcons.user, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.neutral900,
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_items.length, (index) {
              final item = _items[index];
              final isSelected = currentIndex == index;
              final color = isSelected ? AppColors.primary : AppColors.neutral400;
              return InkWell(
                onTap: () => onTap(index),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(item.icon, color: color, size: 22),
                      const SizedBox(height: 2),
                      Text(
                        item.label,
                        style: TextStyle(
                          color: color,
                          fontSize: 11,
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
