import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_order_event.freezed.dart';

/// Events for sales order flows.
@freezed
sealed class SalesOrderEvent with _$SalesOrderEvent {
  const factory SalesOrderEvent.loadList() = SalesOrderLoadList;
  const factory SalesOrderEvent.loadDetail(String id) = SalesOrderLoadDetail;
}
