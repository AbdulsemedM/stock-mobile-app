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

  static const String splashName = 'splash';
  static const String onboardingName = 'onboarding';
  static const String loginName = 'login';
  static const String signupName = 'signup';
  static const String dashboardName = 'dashboard';
  static const String inventoryName = 'inventory';
  static const String ordersName = 'orders';
  static const String moreName = 'more';
  static const String scanName = 'scan';

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
}
