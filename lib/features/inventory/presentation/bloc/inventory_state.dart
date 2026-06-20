import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockflow/core/utils/state_status.dart';
import 'package:stockflow/features/inventory/domain/entities/stock_level.dart';

part 'inventory_state.freezed.dart';

/// State for the inventory feature.
@freezed
abstract class InventoryState with _$InventoryState {
  const factory InventoryState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<StockLevel> stockLevels,
    StockLevel? selectedStockLevel,
    String? errorMessage,
    String? warehouseId,
    @Default({}) Map<String, String> warehouses,
  }) = _InventoryState;

  const InventoryState._();

  List<String> get warehouseOptions {
    return warehouses.entries
        .map((entry) => entry.key)
        .toList()
      ..sort((a, b) => (warehouses[a] ?? a).compareTo(warehouses[b] ?? b));
  }
}
