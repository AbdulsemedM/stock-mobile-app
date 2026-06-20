import '../../features/auth/domain/entities/user.dart';
import '../../features/dashboard/data/models/dashboard_models.dart';
import '../../features/cycle_counts/data/models/cycle_count_model.dart';
import '../../features/inventory/data/models/stock_level_model.dart';
import '../../features/invoices/data/models/invoice_model.dart';
import '../../features/notifications/data/models/notification_model.dart';
import '../../features/picking/data/models/pick_task_model.dart';
import '../../features/products/data/models/product_model.dart';
import '../../features/purchase_orders/data/models/purchase_order_model.dart';
import '../../features/sales_orders/data/models/sales_order_model.dart';
import '../../features/settings/data/models/warehouse_model.dart';
import '../../features/transfers/data/models/stock_transfer_model.dart';

/// In-memory mock data used while the backend is unavailable.
class MockDataStore {
  MockDataStore._();

  static const mockToken = 'mock-jwt-token';

  static User mockUser({String email = 'demo@stockflow.com'}) => User(
        id: 'user-1',
        email: email,
        name: 'Demo User',
        role: 'warehouse_manager',
      );

  static final List<ProductModel> products = [
    const ProductModel(
      id: 'prod-1',
      sku: 'WDG-001',
      name: 'Industrial Widget',
      description: 'Standard warehouse widget, pack of 12',
      unitPrice: 24.99,
      barcode: '1234567890123',
    ),
    const ProductModel(
      id: 'prod-2',
      sku: 'GDG-002',
      name: 'Premium Gadget',
      description: 'High-demand gadget for distribution',
      unitPrice: 49.50,
      barcode: '9876543210987',
    ),
    const ProductModel(
      id: 'prod-3',
      sku: 'CMP-003',
      name: 'Steel Component',
      description: 'Replacement component, low stock alert',
      unitPrice: 8.75,
      barcode: '5555555555555',
    ),
    const ProductModel(
      id: 'prod-4',
      sku: 'BOX-004',
      name: 'Shipping Carton',
      description: 'Corrugated shipping box, large',
      unitPrice: 2.25,
      barcode: '1111222233334',
    ),
  ];

  static final List<WarehouseModel> warehouses = [
    const WarehouseModel(
      id: 'wh-1',
      name: 'Main Distribution Center',
      code: 'MDC',
      address: '100 Warehouse Blvd, Chicago IL',
    ),
    const WarehouseModel(
      id: 'wh-2',
      name: 'East Coast Hub',
      code: 'ECH',
      address: '42 Harbor Rd, Newark NJ',
    ),
    const WarehouseModel(
      id: 'wh-3',
      name: 'West Coast Depot',
      code: 'WCD',
      address: '800 Pacific Ave, Oakland CA',
    ),
  ];

  static List<StockLevelModel> stockLevels = [
    const StockLevelModel(
      id: 'sl-1',
      productId: 'prod-1',
      productName: 'Industrial Widget',
      sku: 'WDG-001',
      warehouseId: 'wh-1',
      warehouseName: 'Main Distribution Center',
      binId: 'bin-a1',
      binCode: 'A-01-02',
      quantity: 240,
      reservedQuantity: 20,
    ),
    const StockLevelModel(
      id: 'sl-2',
      productId: 'prod-2',
      productName: 'Premium Gadget',
      sku: 'GDG-002',
      warehouseId: 'wh-1',
      warehouseName: 'Main Distribution Center',
      binId: 'bin-b3',
      binCode: 'B-03-01',
      quantity: 85,
      reservedQuantity: 15,
    ),
    const StockLevelModel(
      id: 'sl-3',
      productId: 'prod-3',
      productName: 'Steel Component',
      sku: 'CMP-003',
      warehouseId: 'wh-1',
      warehouseName: 'Main Distribution Center',
      binId: 'bin-c2',
      binCode: 'C-02-04',
      quantity: 12,
      reservedQuantity: 0,
    ),
    const StockLevelModel(
      id: 'sl-4',
      productId: 'prod-4',
      productName: 'Shipping Carton',
      sku: 'BOX-004',
      warehouseId: 'wh-2',
      warehouseName: 'East Coast Hub',
      binId: 'bin-d1',
      binCode: 'D-01-01',
      quantity: 500,
      reservedQuantity: 50,
    ),
  ];

  static List<PurchaseOrderModel> purchaseOrders = [
    PurchaseOrderModel(
      id: 'po-1',
      orderNumber: 'PO-2026-0142',
      supplierName: 'Acme Supplies Co.',
      status: 'partially_received',
      orderDate: DateTime(2026, 6, 10),
      expectedDate: DateTime(2026, 6, 18),
      totalAmount: 4250.00,
      lines: [
        const PurchaseOrderLineModel(
          id: 'pol-1',
          productId: 'prod-1',
          productName: 'Industrial Widget',
          sku: 'WDG-001',
          orderedQuantity: 100,
          receivedQuantity: 60,
        ),
        const PurchaseOrderLineModel(
          id: 'pol-2',
          productId: 'prod-3',
          productName: 'Steel Component',
          sku: 'CMP-003',
          orderedQuantity: 200,
          receivedQuantity: 0,
        ),
      ],
    ),
    PurchaseOrderModel(
      id: 'po-2',
      orderNumber: 'PO-2026-0143',
      supplierName: 'Global Parts Ltd.',
      status: 'pending',
      orderDate: DateTime(2026, 6, 15),
      expectedDate: DateTime(2026, 6, 22),
      totalAmount: 1890.50,
      lines: [
        const PurchaseOrderLineModel(
          id: 'pol-3',
          productId: 'prod-2',
          productName: 'Premium Gadget',
          sku: 'GDG-002',
          orderedQuantity: 50,
          receivedQuantity: 0,
        ),
      ],
    ),
    PurchaseOrderModel(
      id: 'po-3',
      orderNumber: 'PO-2026-0138',
      supplierName: 'PackRight Inc.',
      status: 'received',
      orderDate: DateTime(2026, 6, 1),
      expectedDate: DateTime(2026, 6, 8),
      totalAmount: 560.00,
      lines: [
        const PurchaseOrderLineModel(
          id: 'pol-4',
          productId: 'prod-4',
          productName: 'Shipping Carton',
          sku: 'BOX-004',
          orderedQuantity: 250,
          receivedQuantity: 250,
        ),
      ],
    ),
  ];

  static final List<SalesOrderModel> salesOrders = [
    SalesOrderModel(
      id: 'so-1',
      soNumber: 'SO-2026-0891',
      customerName: 'RetailMart Inc.',
      status: 'pending',
      createdAt: DateTime(2026, 6, 17),
      shipDate: DateTime(2026, 6, 21),
      totalAmount: 1249.75,
    ),
    SalesOrderModel(
      id: 'so-2',
      soNumber: 'SO-2026-0892',
      customerName: 'TechDirect LLC',
      status: 'backordered',
      createdAt: DateTime(2026, 6, 18),
      totalAmount: 890.00,
    ),
    SalesOrderModel(
      id: 'so-3',
      soNumber: 'SO-2026-0885',
      customerName: 'BuildCo Partners',
      status: 'shipped',
      createdAt: DateTime(2026, 6, 12),
      shipDate: DateTime(2026, 6, 14),
      totalAmount: 3200.00,
    ),
  ];

  static final Map<String, List<PickTaskModel>> pickTasksByOrder = {
    'so-1': [
      const PickTaskModel(
        id: 'pt-1',
        productId: 'prod-1',
        productName: 'Industrial Widget',
        sku: 'WDG-001',
        quantityRequired: 24,
        quantityPicked: 0,
        status: 'pending',
        binCode: 'A-01-02',
      ),
      const PickTaskModel(
        id: 'pt-2',
        productId: 'prod-2',
        productName: 'Premium Gadget',
        sku: 'GDG-002',
        quantityRequired: 10,
        quantityPicked: 4,
        status: 'partial',
        binCode: 'B-03-01',
      ),
    ],
    'so-2': [
      const PickTaskModel(
        id: 'pt-3',
        productId: 'prod-3',
        productName: 'Steel Component',
        sku: 'CMP-003',
        quantityRequired: 50,
        quantityPicked: 0,
        status: 'pending',
        binCode: 'C-02-04',
      ),
    ],
  };

  static final List<StockTransferModel> transfers = [
    StockTransferModel(
      id: 'tr-1',
      transferNumber: 'TR-2026-0045',
      fromWarehouseName: 'Main Distribution Center',
      toWarehouseName: 'East Coast Hub',
      status: 'pending',
      createdAt: DateTime(2026, 6, 16),
    ),
    StockTransferModel(
      id: 'tr-2',
      transferNumber: 'TR-2026-0042',
      fromWarehouseName: 'East Coast Hub',
      toWarehouseName: 'West Coast Depot',
      status: 'completed',
      createdAt: DateTime(2026, 6, 8),
    ),
  ];

  static final List<CycleCountModel> cycleCounts = [
    CycleCountModel(
      id: 'cc-1',
      countNumber: 'CC-2026-011',
      warehouseName: 'Main Distribution Center',
      status: 'in_progress',
      createdAt: DateTime(2026, 6, 19),
      itemCount: 45,
    ),
    CycleCountModel(
      id: 'cc-2',
      countNumber: 'CC-2026-010',
      warehouseName: 'East Coast Hub',
      status: 'completed',
      createdAt: DateTime(2026, 6, 5),
      itemCount: 120,
    ),
  ];

  static final List<InvoiceModel> invoices = [
    InvoiceModel(
      id: 'inv-1',
      invoiceNumber: 'INV-2026-3310',
      customerName: 'RetailMart Inc.',
      status: 'paid',
      totalAmount: 1249.75,
      createdAt: DateTime(2026, 6, 17),
      dueDate: DateTime(2026, 7, 17),
    ),
    InvoiceModel(
      id: 'inv-2',
      invoiceNumber: 'INV-2026-3311',
      customerName: 'TechDirect LLC',
      status: 'overdue',
      totalAmount: 890.00,
      createdAt: DateTime(2026, 5, 20),
      dueDate: DateTime(2026, 6, 20),
    ),
    InvoiceModel(
      id: 'inv-3',
      invoiceNumber: 'INV-2026-3305',
      customerName: 'BuildCo Partners',
      status: 'draft',
      totalAmount: 3200.00,
      createdAt: DateTime(2026, 6, 14),
    ),
  ];

  static final List<NotificationModel> notifications = [
    NotificationModel(
      id: 'n-1',
      title: 'Low stock alert',
      body: 'Steel Component (CMP-003) is below reorder point.',
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    NotificationModel(
      id: 'n-2',
      title: 'PO partially received',
      body: 'PO-2026-0142 has pending line items.',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NotificationModel(
      id: 'n-3',
      title: 'Transfer completed',
      body: 'TR-2026-0042 arrived at West Coast Depot.',
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      isRead: true,
    ),
  ];

  static DashboardData get dashboard => DashboardData(
        kpis: const [
          DashboardKpi(label: 'Total SKUs', value: '1,248', trend: '+3.2%'),
          DashboardKpi(label: 'Open POs', value: '18'),
          DashboardKpi(label: 'Orders to Pick', value: '7', trend: '-2'),
          DashboardKpi(label: 'Low Stock Items', value: '5', trend: '+1'),
        ],
        lowStockAlerts: const [
          LowStockAlert(
            productId: 'prod-3',
            productName: 'Steel Component',
            sku: 'CMP-003',
            quantity: 12,
            reorderPoint: 50,
          ),
          LowStockAlert(
            productId: 'prod-2',
            productName: 'Premium Gadget',
            sku: 'GDG-002',
            quantity: 85,
            reorderPoint: 100,
          ),
        ],
        recentActivity: [
          RecentActivity(
            id: 'a-1',
            title: 'PO received',
            description: '60x Industrial Widget on PO-2026-0142',
            timestamp: DateTime.now().subtract(const Duration(hours: 1)),
            type: 'receiving',
          ),
          RecentActivity(
            id: 'a-2',
            title: 'Pick completed',
            description: 'SO-2026-0885 shipped to BuildCo Partners',
            timestamp: DateTime.now().subtract(const Duration(hours: 6)),
            type: 'picking',
          ),
          RecentActivity(
            id: 'a-3',
            title: 'Cycle count started',
            description: 'CC-2026-011 at Main Distribution Center',
            timestamp: DateTime.now().subtract(const Duration(days: 1)),
            type: 'cycle_count',
          ),
        ],
      );

  static ProductModel? productByBarcode(String barcode) {
    for (final product in products) {
      if (product.barcode == barcode) return product;
    }
    return null;
  }

  static ProductModel? productById(String id) {
    for (final product in products) {
      if (product.id == id) return product;
    }
    return null;
  }

  static PurchaseOrderModel? purchaseOrderById(String id) {
    for (final order in purchaseOrders) {
      if (order.id == id) return order;
    }
    return null;
  }

  static PurchaseOrderModel receivePurchaseOrderItem({
    required String purchaseOrderId,
    required String barcode,
    required int quantity,
  }) {
    final product = productByBarcode(barcode);
    final index = purchaseOrders.indexWhere((po) => po.id == purchaseOrderId);
    if (index == -1 || product == null) {
      return purchaseOrders.first;
    }

    final order = purchaseOrders[index];
    final updatedLines = order.lines.map((line) {
      if (line.productId != product.id) return line;
      final received = (line.receivedQuantity + quantity).clamp(
        0,
        line.orderedQuantity,
      );
      return line.copyWith(receivedQuantity: received);
    }).toList();

    final allReceived = updatedLines.every(
      (line) => line.receivedQuantity >= line.orderedQuantity,
    );
    final anyReceived = updatedLines.any((line) => line.receivedQuantity > 0);
    final status = allReceived
        ? 'received'
        : anyReceived
            ? 'partially_received'
            : order.status;

    final updated = order.copyWith(status: status, lines: updatedLines);
    purchaseOrders[index] = updated;

    final stockIndex = stockLevels.indexWhere(
      (sl) => sl.productId == product.id,
    );
    if (stockIndex != -1) {
      final stock = stockLevels[stockIndex];
      stockLevels[stockIndex] = stock.copyWith(
        quantity: stock.quantity + quantity,
      );
    }

    return updated;
  }

  static List<PickTaskModel> pickTasksForOrder(String salesOrderId) {
    return List<PickTaskModel>.from(
      pickTasksByOrder[salesOrderId] ?? const [],
    );
  }

  static void confirmPick({
    required String salesOrderId,
    required String pickTaskId,
    required int quantity,
  }) {
    final tasks = pickTasksByOrder[salesOrderId];
    if (tasks == null) return;

    pickTasksByOrder[salesOrderId] = tasks.map((task) {
      if (task.id != pickTaskId) return task;
      final picked = (task.quantityPicked + quantity).clamp(
        0,
        task.quantityRequired,
      );
      final status = picked >= task.quantityRequired
          ? 'completed'
          : picked > 0
              ? 'partial'
              : 'pending';
      return task.copyWith(quantityPicked: picked, status: status);
    }).toList();
  }
}
