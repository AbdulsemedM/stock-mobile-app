import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/sales/menu_list_tile.dart';

/// Orders tab landing with links to purchase and sales order lists.
class OrdersHubPage extends StatelessWidget {
  const OrdersHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral50,
      appBar: AppBar(
        title: const Text('Orders'),
        backgroundColor: AppColors.neutral50,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.base),
        children: [
          MenuListTile(
            icon: LucideIcons.truck,
            label: 'Purchase Orders',
            onTap: () => context.go(RoutePaths.purchaseOrders),
          ),
          const SizedBox(height: AppSpacing.sm),
          MenuListTile(
            icon: LucideIcons.shoppingCart,
            label: 'Sales Orders',
            onTap: () => context.go(RoutePaths.salesOrders),
          ),
        ],
      ),
    );
  }
}
