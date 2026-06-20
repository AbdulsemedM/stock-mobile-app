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
import '../bloc/purchase_order_bloc.dart';
import '../bloc/purchase_order_event.dart';
import '../bloc/purchase_order_state.dart';

/// Receiving screen with barcode scan flow for a purchase order.
class ReceivingPage extends StatefulWidget {
  const ReceivingPage({required this.purchaseOrderId, super.key});

  final String purchaseOrderId;

  @override
  State<ReceivingPage> createState() => _ReceivingPageState();
}

class _ReceivingPageState extends State<ReceivingPage> {
  final _quantityController = TextEditingController(text: '1');

  @override
  void dispose() {
    _quantityController.dispose();
    super.dispose();
  }

  Future<void> _openScanner(BuildContext context) async {
    final barcode = await context.push<String>(RoutePaths.scan);
    if (!context.mounted || barcode == null || barcode.isEmpty) return;

    final quantity = int.tryParse(_quantityController.text) ?? 1;
    context.read<PurchaseOrderBloc>().add(
          PurchaseOrderEvent.receiveScanned(
            purchaseOrderId: widget.purchaseOrderId,
            barcode: barcode,
            quantity: quantity,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PurchaseOrderBloc>()
        ..add(PurchaseOrderEvent.detailRequested(widget.purchaseOrderId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Receive Items')),
        floatingActionButton: AppIconButton(
          onPressed: () => _openScanner(context),
        ),
        body: BlocConsumer<PurchaseOrderBloc, PurchaseOrderState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(context, state.errorMessage!);
            }
            if (state.successMessage != null) {
              AppSnackbar.success(context, state.successMessage!);
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading && state.selectedOrder == null) {
              return const LoadingIndicator();
            }
            if (state.status == StateStatus.failure && state.selectedOrder == null) {
              return ErrorStateView(
                title: 'Failed to load purchase order',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<PurchaseOrderBloc>().add(
                      PurchaseOrderEvent.detailRequested(widget.purchaseOrderId),
                    ),
              );
            }

            final order = state.selectedOrder;
            if (order == null) return const SizedBox.shrink();

            return ListView(
              padding: const EdgeInsets.all(AppSpacing.base),
              children: [
                AppCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.orderNumber,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      const Text('Scan a barcode to receive items into stock.'),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.base),
                AppTextField(
                  controller: _quantityController,
                  label: 'Quantity',
                  keyboardType: TextInputType.number,
                ),
                if (state.pendingBarcode != null) ...[
                  const SizedBox(height: AppSpacing.base),
                  AppCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Scanned: ${state.pendingBarcode}'),
                        const SizedBox(height: AppSpacing.sm),
                        AppButton(
                          label: 'Confirm Receive',
                          isLoading: state.status == StateStatus.loading,
                          onPressed: () {
                            final quantity =
                                int.tryParse(_quantityController.text) ?? 1;
                            context.read<PurchaseOrderBloc>().add(
                                  PurchaseOrderEvent.receiveConfirmed(
                                    purchaseOrderId: widget.purchaseOrderId,
                                    barcode: state.pendingBarcode!,
                                    quantity: quantity,
                                  ),
                                );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: AppSpacing.base),
                Text('Pending Lines', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: AppSpacing.sm),
                ...order.lines.where((line) => !line.isFullyReceived).map(
                      (line) => Padding(
                        padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                        child: AppCard(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(line.productName),
                              Text('SKU: ${line.sku}'),
                              Text(
                                'Remaining: ${line.remainingQuantity}',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}
