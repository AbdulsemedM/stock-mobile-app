import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../app/router/route_paths.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/widgets/layout/app_card.dart';

/// More tab landing with links to secondary features.
class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('More')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.base),
        children: [
          AppCard(
            onTap: () => context.push(RoutePaths.transfers),
            child: const ListTile(
              leading: Icon(LucideIcons.arrowLeftRight),
              title: Text('Stock Transfers'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          AppCard(
            onTap: () => context.push(RoutePaths.cycleCounts),
            child: const ListTile(
              leading: Icon(LucideIcons.clipboardCheck),
              title: Text('Cycle Counts'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          AppCard(
            onTap: () => context.push(RoutePaths.invoices),
            child: const ListTile(
              leading: Icon(LucideIcons.receipt),
              title: Text('Invoices'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          AppCard(
            onTap: () => context.push(RoutePaths.notifications),
            child: const ListTile(
              leading: Icon(LucideIcons.bell),
              title: Text('Notifications'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          AppCard(
            onTap: () => context.push(RoutePaths.settings),
            child: const ListTile(
              leading: Icon(LucideIcons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}
