import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/app_card.dart';
import '../../../../core/widgets/layout/status_badge.dart';
import '../bloc/purchase_order_bloc.dart';
import '../bloc/purchase_order_event.dart';
import '../bloc/purchase_order_state.dart';

/// Purchase order detail screen.
class PoDetailPage extends StatelessWidget {
  const PoDetailPage({required this.purchaseOrderId, super.key});

  final String purchaseOrderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PurchaseOrderBloc>()
        ..add(PurchaseOrderEvent.detailRequested(purchaseOrderId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Purchase Order')),
        body: BlocConsumer<PurchaseOrderBloc, PurchaseOrderState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(context, state.errorMessage!);
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
                      PurchaseOrderEvent.detailRequested(purchaseOrderId),
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
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              order.orderNumber,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          StatusBadge(status: order.status),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Text('Supplier: ${order.supplierName}'),
                      Text('Ordered: ${Formatters.date(order.orderDate)}'),
                      if (order.expectedDate != null)
                        Text('Expected: ${Formatters.date(order.expectedDate!)}'),
                      if (order.totalAmount != null)
                        Text('Total: ${Formatters.currency(order.totalAmount!)}'),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.base),
                Text('Line Items', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: AppSpacing.sm),
                ...order.lines.map(
                  (line) => Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                    child: AppCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(line.productName),
                          Text('SKU: ${line.sku}'),
                          Text(
                            'Received ${line.receivedQuantity} of ${line.orderedQuantity}',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (!order.isFullyReceived) ...[
                  const SizedBox(height: AppSpacing.lg),
                  AppButton(
                    label: 'Receive Items',
                    onPressed: () => context.push(
                      RoutePaths.receivingPath(purchaseOrderId),
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
