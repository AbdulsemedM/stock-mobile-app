import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/repositories/sales_order_repository.dart';
import 'sales_order_event.dart';
import 'sales_order_state.dart';

/// Manages sales order list and detail flows.
@injectable
class SalesOrderBloc extends Bloc<SalesOrderEvent, SalesOrderState> {
  SalesOrderBloc(this._repository) : super(const SalesOrderState()) {
    on<SalesOrderLoadList>(_onLoadList);
    on<SalesOrderLoadDetail>(_onLoadDetail);
  }

  final SalesOrderRepository _repository;

  Future<void> _onLoadList(
    SalesOrderLoadList event,
    Emitter<SalesOrderState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getSalesOrders();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, orders: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> _onLoadDetail(
    SalesOrderLoadDetail event,
    Emitter<SalesOrderState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getSalesOrder(event.id);
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, selectedOrder: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }
}
