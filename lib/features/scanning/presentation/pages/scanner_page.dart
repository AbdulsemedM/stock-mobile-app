import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../cubit/scanner_cubit.dart';
import '../cubit/scanner_state.dart';

/// Full-screen barcode scanner that returns the scanned value via [context.pop].
class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  MobileScannerController? _controller;
  bool _hasScanned = false;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  MobileScannerController _ensureController() {
    return _controller ??= MobileScannerController(
      detectionSpeed: DetectionSpeed.noDuplicates,
    );
  }

  void _onDetect(BuildContext context, BarcodeCapture capture) {
    if (_hasScanned) return;

    String? barcode;
    for (final item in capture.barcodes) {
      final value = item.rawValue;
      if (value != null && value.isNotEmpty) {
        barcode = value;
        break;
      }
    }

    if (barcode == null) return;

    _hasScanned = true;
    context.pop(barcode);
  }

  Rect _scanWindow(Size size) {
    const windowSize = 280.0;
    return Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: windowSize,
      height: windowSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ScannerCubit>()..initialize(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scan Barcode'),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
        ),
        body: BlocBuilder<ScannerCubit, ScannerState>(
          builder: (context, state) {
            return switch (state) {
              ScannerInitial() => const LoadingIndicator(),
              ScannerPermissionDenied() => ErrorStateView(
                  title: 'Camera permission required',
                  description:
                      'Allow camera access in settings to scan barcodes.',
                  onRetry: openAppSettings,
                ),
              ScannerFailure(:final message) => ErrorStateView(
                  title: 'Unable to start scanner',
                  description: message,
                  onRetry: () => context.read<ScannerCubit>().initialize(),
                ),
              ScannerScanning() => _ScannerView(
                  controller: _ensureController(),
                  onDetect: (capture) => _onDetect(context, capture),
                  onError: (error) =>
                      context.read<ScannerCubit>().reportFailure(
                            error.errorDetails?.message ?? error.errorCode.message,
                          ),
                  scanWindowBuilder: _scanWindow,
                ),
            };
          },
        ),
      ),
    );
  }
}

class _ScannerView extends StatelessWidget {
  const _ScannerView({
    required this.controller,
    required this.onDetect,
    required this.onError,
    required this.scanWindowBuilder,
  });

  final MobileScannerController controller;
  final void Function(BarcodeCapture capture) onDetect;
  final void Function(MobileScannerException error) onError;
  final Rect Function(Size size) scanWindowBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scanWindow = scanWindowBuilder(constraints.biggest);

        return Stack(
          fit: StackFit.expand,
          children: [
            MobileScanner(
              controller: controller,
              scanWindow: scanWindow,
              onDetect: onDetect,
              errorBuilder: (context, error) {
                onError(error);
                return const SizedBox.shrink();
              },
              overlayBuilder: (context, overlayConstraints) {
                return ScanWindowOverlay(
                  controller: controller,
                  scanWindow: scanWindow,
                  borderColor: AppColors.accent,
                  borderWidth: 3,
                  borderRadius: BorderRadius.circular(AppRadius.lg),
                );
              },
            ),
            Positioned(
              left: AppSpacing.base,
              right: AppSpacing.base,
              bottom: AppSpacing.xxl,
              child: Text(
                'Align the barcode within the frame',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      shadows: const [
                        Shadow(
                          blurRadius: 8,
                          color: Colors.black54,
                        ),
                      ],
                    ),
              ),
            ),
            Positioned(
              top: AppSpacing.base,
              right: AppSpacing.base,
              child: IconButton.filled(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black54,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => controller.toggleTorch(),
                icon: ValueListenableBuilder(
                  valueListenable: controller,
                  builder: (context, value, child) {
                    final isOn = value.torchState == TorchState.on;
                    return Icon(
                      isOn ? LucideIcons.flashlight : LucideIcons.flashlightOff,
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
