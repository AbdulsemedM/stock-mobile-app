import '../../app/router/route_paths.dart';
import '../../features/auth/domain/entities/user.dart';
import 'user_role.dart';

/// Role-aware route helpers for redirects and guards.
class RoleRoutes {
  RoleRoutes._();

  static UserRole roleOf(User? user) => UserRole.fromUser(user);

  static String homeFor(User? user) {
    return roleOf(user) == UserRole.salesperson
        ? RoutePaths.home
        : RoutePaths.dashboard;
  }

  static bool isSalespersonRoute(String location) {
    return location.startsWith(RoutePaths.home) ||
        location.startsWith(RoutePaths.warehouse) ||
        location.startsWith(RoutePaths.shop) ||
        location.startsWith(RoutePaths.credit) ||
        location.startsWith(RoutePaths.profile) ||
        location.startsWith('/sale') ||
        location.startsWith('/sales-history') ||
        location.startsWith('/general-history') ||
        location.startsWith('/bulk-action') ||
        location.startsWith('/accounts') ||
        location.startsWith('/sales-report') ||
        location.startsWith('/add-stock') ||
        location.startsWith('/customers') ||
        location.startsWith('/expenses') ||
        location.startsWith('/collections') ||
        location.startsWith('/suppliers') ||
        location.startsWith('/branches') ||
        location.startsWith('/user-management') ||
        location.startsWith('/my-credits') ||
        location.startsWith('/tools') ||
        location.startsWith('/credit-detail');
  }

  static bool isAdminShellRoute(String location) {
    return location.startsWith(RoutePaths.dashboard) ||
        location.startsWith(RoutePaths.inventory) ||
        location.startsWith(RoutePaths.orders) ||
        location.startsWith(RoutePaths.more);
  }
}
