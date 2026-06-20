import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../core/di/injection.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/buttons/app_icon_button.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/cycle_counts/presentation/pages/count_entry_page.dart';
import '../../features/cycle_counts/presentation/pages/count_list_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/inventory/presentation/pages/stock_detail_page.dart';
import '../../features/inventory/presentation/pages/stock_levels_page.dart';
import '../../features/invoices/presentation/pages/invoice_detail_page.dart';
import '../../features/invoices/presentation/pages/invoice_list_page.dart';
import '../../features/notifications/presentation/pages/notifications_page.dart';
import '../../features/picking/presentation/pages/pick_task_page.dart';
import '../../features/products/presentation/pages/product_detail_page.dart';
import '../../features/products/presentation/pages/product_list_page.dart';
import '../../features/purchase_orders/presentation/pages/orders_hub_page.dart';
import '../../features/purchase_orders/presentation/pages/po_detail_page.dart';
import '../../features/purchase_orders/presentation/pages/po_list_page.dart';
import '../../features/purchase_orders/presentation/pages/receiving_page.dart';
import '../../features/sales_orders/presentation/pages/order_detail_page.dart';
import '../../features/sales_orders/presentation/pages/order_list_page.dart';
import '../../features/scanning/presentation/pages/scanner_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../features/settings/presentation/pages/warehouse_selector_page.dart';
import '../../features/transfers/presentation/pages/transfer_detail_page.dart';
import '../../features/transfers/presentation/pages/transfer_list_page.dart';
import '../pages/more_page.dart';
import 'route_paths.dart';

/// Notifies [GoRouter] when auth state changes.
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _dashboardNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'dashboard');
final GlobalKey<NavigatorState> _inventoryNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'inventory');
final GlobalKey<NavigatorState> _ordersNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'orders');
final GlobalKey<NavigatorState> _moreNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'more');

/// Application router with auth guard and bottom navigation shell.
late final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RoutePaths.dashboard,
  refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
  redirect: (context, state) {
    final isAuthenticated = getIt<AuthBloc>().state.isAuthenticated;
    final isLoginRoute = state.matchedLocation == RoutePaths.login;

    if (!isAuthenticated && !isLoginRoute) {
      return RoutePaths.login;
    }
    if (isAuthenticated && isLoginRoute) {
      return RoutePaths.dashboard;
    }
    return null;
  },
  routes: [
    GoRoute(
      path: RoutePaths.login,
      name: RoutePaths.loginName,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: RoutePaths.scan,
      name: RoutePaths.scanName,
      parentNavigatorKey: rootNavigatorKey,
      pageBuilder: (context, state) => MaterialPage<void>(
        fullscreenDialog: true,
        child: const ScannerPage(),
      ),
    ),
    GoRoute(
      path: RoutePaths.products,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const ProductListPage(),
      routes: [
        GoRoute(
          path: ':id',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => ProductDetailPage(
            productId: state.pathParameters['id']!,
          ),
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.transfers,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const TransferListPage(),
      routes: [
        GoRoute(
          path: ':id',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => TransferDetailPage(
            transferId: state.pathParameters['id']!,
          ),
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.cycleCounts,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const CountListPage(),
      routes: [
        GoRoute(
          path: ':id/entry',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => CountEntryPage(
            countId: state.pathParameters['id']!,
          ),
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.invoices,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const InvoiceListPage(),
      routes: [
        GoRoute(
          path: ':id',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => InvoiceDetailPage(
            invoiceId: state.pathParameters['id']!,
          ),
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.notifications,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const NotificationsPage(),
    ),
    GoRoute(
      path: RoutePaths.settings,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const SettingsPage(),
      routes: [
        GoRoute(
          path: 'warehouses',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const WarehouseSelectorPage(),
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          MainShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _dashboardNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.dashboard,
              name: RoutePaths.dashboardName,
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _inventoryNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.inventory,
              name: RoutePaths.inventoryName,
              builder: (context, state) => const StockLevelsPage(),
              routes: [
                GoRoute(
                  path: ':id',
                  builder: (context, state) => StockDetailPage(
                    stockLevelId: state.pathParameters['id']!,
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _ordersNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.orders,
              name: RoutePaths.ordersName,
              builder: (context, state) => const OrdersHubPage(),
              routes: [
                GoRoute(
                  path: 'purchase',
                  builder: (context, state) => const PoListPage(),
                  routes: [
                    GoRoute(
                      path: ':id',
                      builder: (context, state) => PoDetailPage(
                        purchaseOrderId: state.pathParameters['id']!,
                      ),
                      routes: [
                        GoRoute(
                          path: 'receive',
                          builder: (context, state) => ReceivingPage(
                            purchaseOrderId: state.pathParameters['id']!,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GoRoute(
                  path: 'sales',
                  builder: (context, state) => const OrderListPage(),
                  routes: [
                    GoRoute(
                      path: ':id',
                      builder: (context, state) => OrderDetailPage(
                        orderId: state.pathParameters['id']!,
                      ),
                      routes: [
                        GoRoute(
                          path: 'pick',
                          builder: (context, state) => PickTaskPage(
                            salesOrderId: state.pathParameters['id']!,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _moreNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.more,
              name: RoutePaths.moreName,
              builder: (context, state) => const MorePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

/// Bottom navigation shell with center scan button.
class MainShell extends StatelessWidget {
  const MainShell({required this.navigationShell, super.key});

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
    final color =
        isSelected ? AppColors.primary : AppColors.neutral400;
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
