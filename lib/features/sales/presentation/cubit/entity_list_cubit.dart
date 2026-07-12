import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../../../core/utils/state_status.dart';
import '../../domain/entities/sales_entities.dart';
import '../../domain/repositories/sales_repository.dart';

part 'entity_list_cubit.freezed.dart';

@freezed
abstract class EntityListState with _$EntityListState {
  const factory EntityListState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<NamedEntity> items,
    String? errorMessage,
  }) = _EntityListState;
}

enum EntityListType {
  customers,
  expenses,
  collections,
  suppliers,
  branches,
  users,
  salesHistory,
  generalHistory,
}

@injectable
class EntityListCubit extends Cubit<EntityListState> {
  EntityListCubit(this._repository) : super(const EntityListState());

  final SalesRepository _repository;

  Future<void> load(EntityListType type) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));
    final result = switch (type) {
      EntityListType.customers => await _repository.getCustomers(),
      EntityListType.expenses => await _repository.getExpenses(),
      EntityListType.collections => await _repository.getCollections(),
      EntityListType.suppliers => await _repository.getSuppliers(),
      EntityListType.branches => await _repository.getBranches(),
      EntityListType.users => await _repository.getUsers(),
      EntityListType.salesHistory => await _repository.getSalesHistory(),
      EntityListType.generalHistory => await _repository.getGeneralHistory(),
    };

    switch (result) {
      case Success(:final data):
        emit(state.copyWith(status: StateStatus.success, items: data));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }
}
