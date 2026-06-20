import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import 'scanner_state.dart';

/// Manages camera permission and scanner lifecycle.
@injectable
class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit() : super(const ScannerState.initial());

  Future<void> initialize() async {
    emit(const ScannerState.initial());

    try {
      final status = await Permission.camera.status;

      if (status.isGranted) {
        emit(const ScannerState.scanning());
        return;
      }

      if (status.isPermanentlyDenied) {
        emit(const ScannerState.permissionDenied());
        return;
      }

      final result = await Permission.camera.request();

      if (result.isGranted) {
        emit(const ScannerState.scanning());
      } else {
        emit(const ScannerState.permissionDenied());
      }
    } catch (error) {
      emit(ScannerState.failure(message: error.toString()));
    }
  }

  void reportFailure(String message) {
    emit(ScannerState.failure(message: message));
  }
}
