import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/state_status.dart';
import '../../domain/entities/invoice.dart';

part 'invoice_state.freezed.dart';

/// State for invoice feature.
@freezed
abstract class InvoiceState with _$InvoiceState {
  const factory InvoiceState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<Invoice> invoices,
    Invoice? selectedInvoice,
    String? errorMessage,
  }) = _InvoiceState;
}
