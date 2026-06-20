import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/inputs/app_text_field.dart';
import '../../../../core/widgets/layout/app_card.dart';
import '../../../../core/widgets/layout/status_badge.dart';
import '../bloc/cycle_count_bloc.dart';
import '../bloc/cycle_count_event.dart';
import '../bloc/cycle_count_state.dart';

/// Cycle count entry screen with scanner FAB.
class CountEntryPage extends StatefulWidget {
  const CountEntryPage({required this.countId, super.key});

  final String countId;

  @override
  State<CountEntryPage> createState() => _CountEntryPageState();
}

class _CountEntryPageState extends State<CountEntryPage> {
  final _qtyController = TextEditingController(text: '1');
  final _barcodeController = TextEditingController();

  @override
  void dispose() {
    _qtyController.dispose();
    _barcodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CycleCountBloc>()
        ..add(CycleCountEvent.loadDetail(widget.countId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Count Entry')),
        floatingActionButton: AppIconButton(
          onPressed: () async {
            final code = await context.push<String>(RoutePaths.scan);
            if (code != null && context.mounted) {
              context.read<CycleCountBloc>().add(CycleCountEvent.barcodeScanned(code));
              _barcodeController.text = code;
            }
          },
        ),
        body: BlocConsumer<CycleCountBloc, CycleCountState>(
          listener: (context, state) {
            if (state.entrySuccess) {
              AppSnackbar.success(context, 'Count entry submitted');
            }
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => _submit(context),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.selectedCount == null) {
              return const LoadingIndicator();
            }
            if (state.status == StateStatus.failure &&
                state.selectedCount == null) {
              return ErrorStateView(
                title: 'Failed to load cycle count',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<CycleCountBloc>().add(
                      CycleCountEvent.loadDetail(widget.countId),
                    ),
              );
            }

            final count = state.selectedCount;
            if (count == null) return const SizedBox.shrink();

            return Padding(
              padding: const EdgeInsets.all(AppSpacing.base),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppCard(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                count.countNumber,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(count.warehouseName),
                            ],
                          ),
                        ),
                        StatusBadge(status: count.status),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.base),
                  AppTextField(
                    controller: _barcodeController,
                    label: 'Scanned Barcode',
                    readOnly: true,
                    prefixIcon: const Icon(Icons.qr_code),
                  ),
                  const SizedBox(height: AppSpacing.base),
                  AppTextField(
                    controller: _qtyController,
                    label: 'Counted Quantity',
                    keyboardType: TextInputType.number,
                    prefixIcon: const Icon(Icons.numbers),
                    onChanged: (v) {
                      final qty = int.tryParse(v) ?? 1;
                      context.read<CycleCountBloc>().add(
                            CycleCountEvent.quantityChanged(qty),
                          );
                    },
                  ),
                  const Spacer(),
                  AppButton(
                    label: 'Submit Count',
                    isLoading: state.status == StateStatus.loading,
                    isDisabled: state.scannedBarcode == null,
                    onPressed: () => _submit(context),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _submit(BuildContext context) {
    final state = context.read<CycleCountBloc>().state;
    final barcode = state.scannedBarcode;
    if (barcode == null) return;
    final qty = int.tryParse(_qtyController.text) ?? state.entryQuantity;
    context.read<CycleCountBloc>().add(
          CycleCountEvent.entrySubmitted(
            cycleCountId: widget.countId,
            barcode: barcode,
            quantity: qty,
          ),
        );
  }
}
