import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_event.freezed.dart';

/// Events for invoice flows.
@freezed
sealed class InvoiceEvent with _$InvoiceEvent {
  const factory InvoiceEvent.loadList() = InvoiceLoadList;
  const factory InvoiceEvent.loadDetail(String id) = InvoiceLoadDetail;
}
