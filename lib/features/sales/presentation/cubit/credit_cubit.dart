import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/entities/sales_entities.dart';
import '../../domain/repositories/sales_repository.dart';

part 'credit_cubit.freezed.dart';

@freezed
abstract class CreditState with _$CreditState {
  const factory CreditState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<CreditEntry> entries,
    @Default(0.0) double totalDue,
    @Default('') String searchQuery,
    String? errorMessage,
  }) = _CreditState;
}

@injectable
class CreditCubit extends Cubit<CreditState> {
  CreditCubit(this._repository) : super(const CreditState());

  final SalesRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final entriesResult =
        await _repository.getCreditEntries(query: state.searchQuery);
    final totalResult = await _repository.getTotalCreditDue();

    switch (entriesResult) {
      case Success(:final data):
        final total = switch (totalResult) {
          Success(:final data) => data,
          FailureResult() => 0.0,
        };
        emit(state.copyWith(
          status: StateStatus.success,
          entries: data,
          totalDue: total,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  Future<void> searchChanged(String query) async {
    emit(state.copyWith(searchQuery: query));
    await load();
  }
}
