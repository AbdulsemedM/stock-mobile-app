import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stockflow/core/errors/failures.dart';
import 'package:stockflow/core/utils/result.dart';
import 'package:stockflow/core/utils/state_status.dart';
import 'package:stockflow/features/products/domain/repositories/product_repository.dart';
import 'package:stockflow/features/products/presentation/bloc/products_event.dart';
import 'package:stockflow/features/products/presentation/bloc/products_state.dart';

/// Manages product list, search, and detail loading.
@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(this._repository) : super(const ProductsState()) {
    on<ProductsLoadRequested>(_onLoadRequested);
    on<ProductsSearchChanged>(_onSearchChanged);
  }

  final ProductRepository _repository;

  Future<void> _onLoadRequested(
    ProductsLoadRequested event,
    Emitter<ProductsState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading, errorMessage: null));

    if (event.productId != null) {
      final result = await _repository.getProduct(event.productId!);
      switch (result) {
        case Success(:final data):
          emit(state.copyWith(
            status: StateStatus.success,
            selectedProduct: data,
          ));
        case FailureResult(:final failure):
          emit(state.copyWith(
            status: StateStatus.failure,
            errorMessage: mapFailureToMessage(failure),
          ));
      }
      return;
    }

    final result = await _repository.getProducts();
    switch (result) {
      case Success(:final data):
        emit(state.copyWith(
          status: StateStatus.success,
          products: data,
        ));
      case FailureResult(:final failure):
        emit(state.copyWith(
          status: StateStatus.failure,
          errorMessage: mapFailureToMessage(failure),
        ));
    }
  }

  void _onSearchChanged(
    ProductsSearchChanged event,
    Emitter<ProductsState> emit,
  ) {
    emit(state.copyWith(searchQuery: event.query));
  }
}
