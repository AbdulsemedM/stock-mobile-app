import 'package:equatable/equatable.dart';

/// Dashboard KPI metric.
class DashboardKpi extends Equatable {
  const DashboardKpi({
    required this.label,
    required this.value,
    this.trend,
  });

  final String label;
  final String value;
  final String? trend;

  @override
  List<Object?> get props => [label, value, trend];
}

/// Low stock alert item.
class LowStockAlert extends Equatable {
  const LowStockAlert({
    required this.productId,
    required this.productName,
    required this.sku,
    required this.quantity,
    required this.reorderPoint,
  });

  final String productId;
  final String productName;
  final String sku;
  final int quantity;
  final int reorderPoint;

  @override
  List<Object?> get props => [productId, productName, sku, quantity, reorderPoint];
}

/// Recent activity feed item.
class RecentActivity extends Equatable {
  const RecentActivity({
    required this.id,
    required this.title,
    required this.description,
    required this.timestamp,
    required this.type,
  });

  final String id;
  final String title;
  final String description;
  final DateTime timestamp;
  final String type;

  @override
  List<Object?> get props => [id, title, description, timestamp, type];
}

/// Aggregated dashboard data.
class DashboardData extends Equatable {
  const DashboardData({
    required this.kpis,
    required this.lowStockAlerts,
    required this.recentActivity,
  });

  final List<DashboardKpi> kpis;
  final List<LowStockAlert> lowStockAlerts;
  final List<RecentActivity> recentActivity;

  @override
  List<Object?> get props => [kpis, lowStockAlerts, recentActivity];
}
