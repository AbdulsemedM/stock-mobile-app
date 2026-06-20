import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/layout/app_card.dart';

/// Orders tab landing with links to purchase and sales order lists.
class OrdersHubPage extends StatelessWidget {
  const OrdersHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.base),
        children: [
          AppCard(
            onTap: () => context.go(RoutePaths.purchaseOrders),
            child: const ListTile(
              leading: Icon(LucideIcons.truck),
              title: Text('Purchase Orders'),
              subtitle: Text('Receive inbound stock'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          AppCard(
            onTap: () => context.go(RoutePaths.salesOrders),
            child: const ListTile(
              leading: Icon(LucideIcons.shoppingCart),
              title: Text('Sales Orders'),
              subtitle: Text('Pick and fulfill outbound orders'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}
