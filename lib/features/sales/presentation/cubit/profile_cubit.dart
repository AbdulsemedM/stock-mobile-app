import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/entities/sales_entities.dart';
import '../../domain/repositories/sales_repository.dart';

part 'profile_cubit.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(StateStatus.initial) StateStatus status,
    StoreProfile? profile,
    String? errorMessage,
  }) = _ProfileState;
}

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._repository) : super(const ProfileState());

  final SalesRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = await _repository.getStoreProfile();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, profile: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }
}
