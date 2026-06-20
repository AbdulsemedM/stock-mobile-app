import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/state_status.dart';
import '../../domain/entities/stock_transfer.dart';

part 'transfer_state.freezed.dart';

/// State for stock transfer feature.
@freezed
abstract class TransferState with _$TransferState {
  const factory TransferState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<StockTransfer> transfers,
    StockTransfer? selectedTransfer,
    String? errorMessage,
  }) = _TransferState;
}
