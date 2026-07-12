import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/entities/sales_entities.dart';
import '../../domain/repositories/sales_repository.dart';

part 'home_cubit.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(StateStatus.initial) StateStatus status,
    SalesHomeData? data,
    String? errorMessage,
  }) = _HomeState;
}

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(const HomeState());

  final SalesRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getHomeData();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, data: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }
}
