import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../core/theme/app_colors.dart';
import '../../core/widgets/buttons/app_icon_button.dart';
import '../router/route_paths.dart';

/// Bottom navigation shell for admin role (4 tabs + scan FAB).
class AdminShell extends StatelessWidget {
  const AdminShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  void _onDestinationSelected(BuildContext context, int index) {
    if (index == 2) {
      context.push(RoutePaths.scan);
      return;
    }
    final branchIndex = index < 2 ? index : index - 1;
    navigationShell.goBranch(
      branchIndex,
      initialLocation: branchIndex == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.neutral900,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                icon: LucideIcons.layoutDashboard,
                label: 'Dashboard',
                isSelected: navigationShell.currentIndex == 0,
                onTap: () => _onDestinationSelected(context, 0),
              ),
              _NavItem(
                icon: LucideIcons.warehouse,
                label: 'Inventory',
                isSelected: navigationShell.currentIndex == 1,
                onTap: () => _onDestinationSelected(context, 1),
              ),
              const SizedBox(width: 48),
              _NavItem(
                icon: LucideIcons.clipboardList,
                label: 'Orders',
                isSelected: navigationShell.currentIndex == 2,
                onTap: () => _onDestinationSelected(context, 3),
              ),
              _NavItem(
                icon: LucideIcons.menu,
                label: 'More',
                isSelected: navigationShell.currentIndex == 3,
                onTap: () => _onDestinationSelected(context, 4),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: AppIconButton(
        onPressed: () => context.push(RoutePaths.scan),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? AppColors.primary : AppColors.neutral400;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 22),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
