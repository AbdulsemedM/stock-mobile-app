import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.freezed.dart';

/// Events for the products catalog flow.
@freezed
sealed class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.loadRequested({String? productId}) =
      ProductsLoadRequested;

  const factory ProductsEvent.searchChanged(String query) =
      ProductsSearchChanged;
}
