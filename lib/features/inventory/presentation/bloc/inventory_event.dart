import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_event.freezed.dart';

/// Events for the inventory and stock levels flow.
@freezed
sealed class InventoryEvent with _$InventoryEvent {
  const factory InventoryEvent.loadRequested({String? stockLevelId}) =
      InventoryLoadRequested;

  const factory InventoryEvent.warehouseFilterChanged({String? warehouseId}) =
      InventoryWarehouseFilterChanged;
}
