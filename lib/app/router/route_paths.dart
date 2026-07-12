/// Route path and name constants for go_router navigation.
class RoutePaths {
  RoutePaths._();

  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String dashboard = '/dashboard';
  static const String inventory = '/inventory';
  static const String inventoryDetail = '/inventory/:id';
  static const String orders = '/orders';
  static const String purchaseOrders = '/orders/purchase';
  static const String purchaseOrderDetail = '/orders/purchase/:id';
  static const String receiving = '/orders/purchase/:id/receive';
  static const String salesOrders = '/orders/sales';
  static const String salesOrderDetail = '/orders/sales/:id';
  static const String pickTask = '/orders/sales/:id/pick';
  static const String more = '/more';
  static const String products = '/products';
  static const String productDetail = '/products/:id';
  static const String scan = '/scan';
  static const String transfers = '/transfers';
  static const String transferDetail = '/transfers/:id';
  static const String cycleCounts = '/cycle-counts';
  static const String cycleCountEntry = '/cycle-counts/:id/entry';
  static const String invoices = '/invoices';
  static const String invoiceDetail = '/invoices/:id';
  static const String notifications = '/notifications';
  static const String settings = '/settings';
  static const String warehouseSelector = '/settings/warehouses';

  // Salesperson shell routes
  static const String home = '/home';
  static const String warehouse = '/warehouse';
  static const String shop = '/shop';
  static const String credit = '/credit';
  static const String profile = '/profile';

  // Salesperson sub-routes
  static const String sale = '/sale';
  static const String salesHistory = '/sales-history';
  static const String generalHistory = '/general-history';
  static const String bulkAction = '/bulk-action';
  static const String accounts = '/accounts';
  static const String salesReport = '/sales-report';
  static const String addStock = '/add-stock';
  static const String creditDetail = '/credit-detail';
  static const String customers = '/customers';
  static const String expenses = '/expenses';
  static const String collections = '/collections';
  static const String suppliers = '/suppliers';
  static const String branches = '/branches';
  static const String userManagement = '/user-management';
  static const String myCredits = '/my-credits';
  static const String tools = '/tools';

  static const String splashName = 'splash';
  static const String onboardingName = 'onboarding';
  static const String loginName = 'login';
  static const String signupName = 'signup';
  static const String dashboardName = 'dashboard';
  static const String inventoryName = 'inventory';
  static const String ordersName = 'orders';
  static const String moreName = 'more';
  static const String scanName = 'scan';
  static const String homeName = 'home';
  static const String warehouseName = 'warehouse';
  static const String shopName = 'shop';
  static const String creditName = 'credit';
  static const String profileName = 'profile';

  static String inventoryDetailPath(String id) =>
      inventoryDetail.replaceFirst(':id', id);

  static String productDetailPath(String id) =>
      productDetail.replaceFirst(':id', id);

  static String purchaseOrderDetailPath(String id) =>
      purchaseOrderDetail.replaceFirst(':id', id);

  static String receivingPath(String id) =>
      receiving.replaceFirst(':id', id);

  static String salesOrderDetailPath(String id) =>
      salesOrderDetail.replaceFirst(':id', id);

  static String pickTaskPath(String id) =>
      pickTask.replaceFirst(':id', id);

  static String transferDetailPath(String id) =>
      transferDetail.replaceFirst(':id', id);

  static String cycleCountEntryPath(String id) =>
      cycleCountEntry.replaceFirst(':id', id);

  static String invoiceDetailPath(String id) =>
      invoiceDetail.replaceFirst(':id', id);

  static String creditDetailPath(String id) =>
      creditDetail.replaceFirst(':id', id);

  static String addStockPath({required String location}) =>
      '$addStock?location=$location';
}
