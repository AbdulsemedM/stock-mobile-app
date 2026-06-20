import 'package:freezed_annotation/freezed_annotation.dart';

part 'picking_event.freezed.dart';

/// Events for picking flows.
@freezed
sealed class PickingEvent with _$PickingEvent {
  const factory PickingEvent.loadTasks(String salesOrderId) = PickingLoadTasks;
  const factory PickingEvent.pickSubmitted({
    required String salesOrderId,
    required String pickTaskId,
    required String barcode,
    required int quantity,
  }) = PickingPickSubmitted;
  const factory PickingEvent.taskSelected(String taskId) = PickingTaskSelected;
  const factory PickingEvent.barcodeScanned(String barcode) = PickingBarcodeScanned;
  const factory PickingEvent.quantityChanged(int quantity) = PickingQuantityChanged;
}
