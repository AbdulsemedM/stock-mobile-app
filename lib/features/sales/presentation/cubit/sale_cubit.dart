import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/entities/sales_entities.dart';
import '../../domain/repositories/sales_repository.dart';

part 'sale_cubit.freezed.dart';

@freezed
abstract class SaleState with _$SaleState {
  const factory SaleState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<SaleLineItem> lines,
    @Default('') String customerName,
    @Default('cash') String paymentType,
    String? errorMessage,
    @Default(false) bool submitted,
  }) = _SaleState;

  const SaleState._();

  double get total =>
      lines.fold(0.0, (sum, line) => sum + line.lineTotal);
}

@injectable
class SaleCubit extends Cubit<SaleState> {
  SaleCubit(this._repository) : super(const SaleState());

  final SalesRepository _repository;

  void addLine(SaleLineItem line) {
    final existing = state.lines.indexWhere(
      (l) => l.productId == line.productId,
    );
    if (existing >= 0) {
      final updated = List<SaleLineItem>.from(state.lines);
      final current = updated[existing];
      updated[existing] = SaleLineItem(
        productId: current.productId,
        name: current.name,
        price: current.price,
        quantity: current.quantity + line.quantity,
      );
      emit(state.copyWith(lines: updated));
    } else {
      emit(state.copyWith(lines: [...state.lines, line]));
    }
  }

  void removeLine(String productId) {
    emit(state.copyWith(
      lines: state.lines.where((l) => l.productId != productId).toList(),
    ));
  }

  void setCustomer(String name) => emit(state.copyWith(customerName: name));

  void setPaymentType(String type) => emit(state.copyWith(paymentType: type));

  Future<void> submit() async {
    if (state.lines.isEmpty) return;
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.submitSale(
      lines: state.lines,
      customerName:
          state.customerName.isEmpty ? null : state.customerName,
      paymentType: state.paymentType,
    );
    switch (result) {
      case Success():
        emit(state.copyWith(
          status: StateStatus.success,
          submitted: true,
          lines: [],
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  void reset() => emit(const SaleState());
}
