import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/state_status.dart';
import '../../domain/entities/sales_order.dart';

part 'sales_order_state.freezed.dart';

/// State for sales order feature.
@freezed
abstract class SalesOrderState with _$SalesOrderState {
  const factory SalesOrderState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<SalesOrder> orders,
    SalesOrder? selectedOrder,
    String? errorMessage,
  }) = _SalesOrderState;
}
