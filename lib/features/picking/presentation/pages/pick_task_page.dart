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
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/inputs/app_text_field.dart';
import '../../../../core/widgets/layout/status_badge.dart';
import '../bloc/picking_bloc.dart';
import '../bloc/picking_event.dart';
import '../bloc/picking_state.dart';

/// Pick task screen for a sales order with scanner FAB.
class PickTaskPage extends StatefulWidget {
  const PickTaskPage({required this.salesOrderId, super.key});

  final String salesOrderId;

  @override
  State<PickTaskPage> createState() => _PickTaskPageState();
}

class _PickTaskPageState extends State<PickTaskPage> {
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
      create: (_) => getIt<PickingBloc>()
        ..add(PickingEvent.loadTasks(widget.salesOrderId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Pick Items')),
        floatingActionButton: AppIconButton(
          onPressed: () async {
            final code = await context.push<String>(RoutePaths.scan);
            if (code != null && context.mounted) {
              context.read<PickingBloc>().add(PickingEvent.barcodeScanned(code));
              _barcodeController.text = code;
            }
          },
        ),
        body: BlocConsumer<PickingBloc, PickingState>(
          listener: (context, state) {
            if (state.pickSuccess) {
              AppSnackbar.success(context, 'Pick confirmed successfully');
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
            if (state.status == StateStatus.loading && state.tasks.isEmpty) {
              return const LoadingIndicator();
            }
            if (state.status == StateStatus.failure && state.tasks.isEmpty) {
              return ErrorStateView(
                title: 'Failed to load pick tasks',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<PickingBloc>().add(
                      PickingEvent.loadTasks(widget.salesOrderId),
                    ),
              );
            }
            if (state.tasks.isEmpty) {
              return const EmptyStateView(
                icon: Icons.inventory_2_outlined,
                title: 'No pick tasks',
                description: 'All items may already be picked.',
              );
            }

            final selected = state.selectedTask;
            if (selected == null) return const SizedBox.shrink();

            return Padding(
              padding: const EdgeInsets.all(AppSpacing.base),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DropdownButtonFormField<String>(
                    value: selected.id,
                    decoration: const InputDecoration(
                      labelText: 'Pick task',
                      prefixIcon: Icon(Icons.list_alt),
                    ),
                    items: state.tasks
                        .map(
                          (task) => DropdownMenuItem(
                            value: task.id,
                            child: Text('${task.sku} · ${task.productName}'),
                          ),
                        )
                        .toList(),
                    onChanged: (taskId) {
                      if (taskId != null) {
                        context.read<PickingBloc>().add(PickingEvent.taskSelected(taskId));
                        _barcodeController.clear();
                      }
                    },
                  ),
                  const SizedBox(height: AppSpacing.base),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          selected.productName,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      StatusBadge(status: selected.status),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Picked ${selected.quantityPicked} of ${selected.quantityRequired}',
                  ),
                  if (selected.binCode != null)
                    Text('Bin: ${selected.binCode}'),
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
                    label: 'Quantity',
                    keyboardType: TextInputType.number,
                    prefixIcon: const Icon(Icons.numbers),
                    onChanged: (v) {
                      final qty = int.tryParse(v) ?? 1;
                      context.read<PickingBloc>().add(
                            PickingEvent.quantityChanged(qty),
                          );
                    },
                  ),
                  const Spacer(),
                  AppButton(
                    label: 'Confirm Pick',
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
    final state = context.read<PickingBloc>().state;
    final barcode = state.scannedBarcode;
    final task = state.selectedTask;
    if (barcode == null || task == null) return;
    final qty = int.tryParse(_qtyController.text) ?? state.pickQuantity;
    context.read<PickingBloc>().add(
          PickingEvent.pickSubmitted(
            salesOrderId: widget.salesOrderId,
            pickTaskId: task.id,
            barcode: barcode,
            quantity: qty,
          ),
        );
  }
}
