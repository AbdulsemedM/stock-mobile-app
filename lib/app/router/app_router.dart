import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/role_routes.dart';
import '../../core/auth/user_role.dart';
import '../../core/di/injection.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/cycle_counts/presentation/pages/count_entry_page.dart';
import '../../features/cycle_counts/presentation/pages/count_list_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/inventory/presentation/pages/stock_detail_page.dart';
import '../../features/inventory/presentation/pages/stock_levels_page.dart';
import '../../features/invoices/presentation/pages/invoice_detail_page.dart';
import '../../features/invoices/presentation/pages/invoice_list_page.dart';
import '../../features/notifications/presentation/pages/notifications_page.dart';
import '../../features/onboarding/data/repositories/onboarding_repository.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/picking/presentation/pages/pick_task_page.dart';
import '../../features/products/presentation/pages/product_detail_page.dart';
import '../../features/products/presentation/pages/product_list_page.dart';
import '../../features/purchase_orders/presentation/pages/orders_hub_page.dart';
import '../../features/purchase_orders/presentation/pages/po_detail_page.dart';
import '../../features/purchase_orders/presentation/pages/po_list_page.dart';
import '../../features/purchase_orders/presentation/pages/receiving_page.dart';
import '../../features/sales/presentation/cubit/entity_list_cubit.dart';
import '../../features/sales/presentation/pages/add_stock_page.dart';
import '../../features/sales/presentation/pages/credit_detail_page.dart';
import '../../features/sales/presentation/pages/credit_page.dart';
import '../../features/sales/presentation/pages/entity_list_page.dart';
import '../../features/sales/presentation/pages/home_page.dart';
import '../../features/sales/presentation/pages/profile_page.dart';
import '../../features/sales/presentation/pages/sale_page.dart';
import '../../features/sales/presentation/pages/shop_stock_page.dart';
import '../../features/sales/presentation/pages/warehouse_stock_page.dart';
import '../../features/sales_orders/presentation/pages/order_detail_page.dart';
import '../../features/sales_orders/presentation/pages/order_list_page.dart';
import '../../features/scanning/presentation/pages/scanner_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../features/settings/presentation/pages/warehouse_selector_page.dart';
import '../../features/transfers/presentation/pages/transfer_detail_page.dart';
import '../../features/transfers/presentation/pages/transfer_list_page.dart';
import '../pages/more_page.dart';
import '../pages/splash_page.dart';
import '../shell/admin_shell.dart';
import '../shell/salesperson_shell.dart';
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

final GlobalKey<NavigatorState> _homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'home');
final GlobalKey<NavigatorState> _warehouseNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'warehouse');
final GlobalKey<NavigatorState> _shopNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shop');
final GlobalKey<NavigatorState> _creditNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'credit');
final GlobalKey<NavigatorState> _profileNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'profile');

String? _roleRedirect(String location, UserRole role) {
  if (role == UserRole.salesperson && RoleRoutes.isAdminShellRoute(location)) {
    return RoutePaths.home;
  }
  if (role == UserRole.admin && RoleRoutes.isSalespersonRoute(location)) {
    return RoutePaths.dashboard;
  }
  return null;
}

/// Application router with auth guard and role-based navigation shells.
late final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RoutePaths.splash,
  refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
  redirect: (context, state) {
    final onboardingCompleted = getIt<OnboardingRepository>().isCompleted;
    final location = state.matchedLocation;
    final isSplashRoute = location == RoutePaths.splash;
    final isOnboardingRoute = location == RoutePaths.onboarding;
    final authState = getIt<AuthBloc>().state;
    final isAuthenticated = authState.isAuthenticated;
    final isLoginRoute = location == RoutePaths.login;
    final isSignupRoute = location == RoutePaths.signup;
    final isAuthRoute = isLoginRoute || isSignupRoute;

    if (isSplashRoute) return null;

    if (!onboardingCompleted && !isOnboardingRoute) {
      return RoutePaths.onboarding;
    }
    if (onboardingCompleted && isOnboardingRoute) {
      return isAuthenticated
          ? RoleRoutes.homeFor(authState.user)
          : RoutePaths.login;
    }
    if (!isAuthenticated && !isAuthRoute && !isOnboardingRoute) {
      return RoutePaths.login;
    }
    if (isAuthenticated && isAuthRoute) {
      return RoleRoutes.homeFor(authState.user);
    }

    if (isAuthenticated) {
      final role = RoleRoutes.roleOf(authState.user);
      final roleRedirect = _roleRedirect(location, role);
      if (roleRedirect != null) return roleRedirect;
    }

    return null;
  },
  routes: [
    GoRoute(
      path: RoutePaths.splash,
      name: RoutePaths.splashName,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RoutePaths.onboarding,
      name: RoutePaths.onboardingName,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: RoutePaths.login,
      name: RoutePaths.loginName,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: RoutePaths.signup,
      name: RoutePaths.signupName,
      builder: (context, state) => const SignupPage(),
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
    // Salesperson sub-routes (pushed over shell)
    GoRoute(
      path: RoutePaths.sale,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const SalePage(),
    ),
    GoRoute(
      path: RoutePaths.salesHistory,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const EntityListPage(
        title: 'Sales History',
        type: EntityListType.salesHistory,
      ),
    ),
    GoRoute(
      path: RoutePaths.generalHistory,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const EntityListPage(
        title: 'General History',
        type: EntityListType.generalHistory,
      ),
    ),
    GoRoute(
      path: RoutePaths.bulkAction,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const BulkActionPage(),
    ),
    GoRoute(
      path: RoutePaths.accounts,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const AccountsPage(),
    ),
    GoRoute(
      path: RoutePaths.salesReport,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const SalesReportPage(),
    ),
    GoRoute(
      path: RoutePaths.addStock,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => AddStockPage(
        locationType: state.uri.queryParameters['location'] ?? 'warehouse',
      ),
    ),
    GoRoute(
      path: '${RoutePaths.creditDetail}/:id',
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => CreditDetailPage(
        creditId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      path: RoutePaths.customers,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const EntityListPage(
        title: 'My Customers',
        type: EntityListType.customers,
      ),
    ),
    GoRoute(
      path: RoutePaths.expenses,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const EntityListPage(
        title: 'Expense',
        type: EntityListType.expenses,
      ),
    ),
    GoRoute(
      path: RoutePaths.collections,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const EntityListPage(
        title: 'My Collections',
        type: EntityListType.collections,
      ),
    ),
    GoRoute(
      path: RoutePaths.suppliers,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const EntityListPage(
        title: 'My Suppliers',
        type: EntityListType.suppliers,
      ),
    ),
    GoRoute(
      path: RoutePaths.branches,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const EntityListPage(
        title: 'My Branches',
        type: EntityListType.branches,
      ),
    ),
    GoRoute(
      path: RoutePaths.userManagement,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const EntityListPage(
        title: 'User Management',
        type: EntityListType.users,
      ),
    ),
    GoRoute(
      path: RoutePaths.myCredits,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const CreditPage(),
    ),
    GoRoute(
      path: RoutePaths.tools,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const ToolsPage(),
    ),
    // Admin shell (4 tabs)
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          AdminShell(navigationShell: navigationShell),
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
    // Salesperson shell (5 tabs)
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          SalespersonShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.home,
              name: RoutePaths.homeName,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _warehouseNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.warehouse,
              name: RoutePaths.warehouseName,
              builder: (context, state) => const WarehouseStockPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shopNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.shop,
              name: RoutePaths.shopName,
              builder: (context, state) => const ShopStockPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _creditNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.credit,
              name: RoutePaths.creditName,
              builder: (context, state) => const CreditPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _profileNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.profile,
              name: RoutePaths.profileName,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
