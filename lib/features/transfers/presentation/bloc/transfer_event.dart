import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_event.freezed.dart';

/// Events for stock transfer flows.
@freezed
sealed class TransferEvent with _$TransferEvent {
  const factory TransferEvent.loadList() = TransferLoadList;
  const factory TransferEvent.loadDetail(String id) = TransferLoadDetail;
}
