import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/repositories/invoice_repository.dart';
import 'invoice_event.dart';
import 'invoice_state.dart';

/// Manages invoice list and detail flows.
@injectable
class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  InvoiceBloc(this._repository) : super(const InvoiceState()) {
    on<InvoiceLoadList>(_onLoadList);
    on<InvoiceLoadDetail>(_onLoadDetail);
  }

  final InvoiceRepository _repository;

  Future<void> _onLoadList(
    InvoiceLoadList event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getInvoices();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, invoices: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> _onLoadDetail(
    InvoiceLoadDetail event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getInvoice(event.id);
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, selectedInvoice: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }
}
