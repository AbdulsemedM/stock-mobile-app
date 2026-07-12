import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../app/router/route_paths.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/widgets/sales/menu_list_tile.dart';

/// More tab landing with links to secondary features.
class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral50,
      appBar: AppBar(
        title: const Text('More'),
        backgroundColor: AppColors.neutral50,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.base),
        children: [
          MenuListTile(
            icon: LucideIcons.arrowLeftRight,
            label: 'Stock Transfers',
            onTap: () => context.push(RoutePaths.transfers),
          ),
          const SizedBox(height: AppSpacing.sm),
          MenuListTile(
            icon: LucideIcons.clipboardCheck,
            label: 'Cycle Counts',
            onTap: () => context.push(RoutePaths.cycleCounts),
          ),
          const SizedBox(height: AppSpacing.sm),
          MenuListTile(
            icon: LucideIcons.receipt,
            label: 'Invoices',
            onTap: () => context.push(RoutePaths.invoices),
          ),
          const SizedBox(height: AppSpacing.sm),
          MenuListTile(
            icon: LucideIcons.bell,
            label: 'Notifications',
            onTap: () => context.push(RoutePaths.notifications),
          ),
          const SizedBox(height: AppSpacing.sm),
          MenuListTile(
            icon: LucideIcons.settings,
            label: 'Settings',
            onTap: () => context.push(RoutePaths.settings),
          ),
        ],
      ),
    );
  }
}
