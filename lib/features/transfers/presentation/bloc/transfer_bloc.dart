import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/repositories/transfer_repository.dart';
import 'transfer_event.dart';
import 'transfer_state.dart';

/// Manages stock transfer list and detail flows.
@injectable
class TransferBloc extends Bloc<TransferEvent, TransferState> {
  TransferBloc(this._repository) : super(const TransferState()) {
    on<TransferLoadList>(_onLoadList);
    on<TransferLoadDetail>(_onLoadDetail);
  }

  final TransferRepository _repository;

  Future<void> _onLoadList(
    TransferLoadList event,
    Emitter<TransferState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getStockTransfers();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, transfers: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> _onLoadDetail(
    TransferLoadDetail event,
    Emitter<TransferState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getStockTransfer(event.id);
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          selectedTransfer: data,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }
}
