import 'package:freezed_annotation/freezed_annotation.dart';

part 'cycle_count_event.freezed.dart';

/// Events for cycle count flows.
@freezed
sealed class CycleCountEvent with _$CycleCountEvent {
  const factory CycleCountEvent.loadList() = CycleCountLoadList;
  const factory CycleCountEvent.loadDetail(String id) = CycleCountLoadDetail;
  const factory CycleCountEvent.entrySubmitted({
    required String cycleCountId,
    required String barcode,
    required int quantity,
  }) = CycleCountEntrySubmitted;
  const factory CycleCountEvent.barcodeScanned(String barcode) =
      CycleCountBarcodeScanned;
  const factory CycleCountEvent.quantityChanged(int quantity) =
      CycleCountQuantityChanged;
}
