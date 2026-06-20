import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_state.freezed.dart';

/// State for the barcode scanner screen.
@freezed
sealed class ScannerState with _$ScannerState {
  const factory ScannerState.initial() = ScannerInitial;

  const factory ScannerState.scanning() = ScannerScanning;

  const factory ScannerState.permissionDenied() = ScannerPermissionDenied;

  const factory ScannerState.failure({required String message}) = ScannerFailure;
}
