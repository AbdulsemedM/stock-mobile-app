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
import '../bloc/sales_order_bloc.dart';
import '../bloc/sales_order_event.dart';
import '../bloc/sales_order_state.dart';

/// Sales order detail screen.
class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({required this.orderId, super.key});

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SalesOrderBloc>()
        ..add(SalesOrderEvent.loadDetail(orderId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Sales Order')),
        body: BlocConsumer<SalesOrderBloc, SalesOrderState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(context, state.errorMessage!);
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading) {
              return const LoadingIndicator();
            }
            if (state.status == StateStatus.failure) {
              return ErrorStateView(
                title: 'Failed to load sales order',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<SalesOrderBloc>().add(
                      SalesOrderEvent.loadDetail(orderId),
                    ),
              );
            }
            final order = state.selectedOrder;
            if (order == null) return const SizedBox.shrink();
            return Padding(
              padding: const EdgeInsets.all(AppSpacing.base),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                order.soNumber,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            StatusBadge(status: order.status),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text('Customer: ${order.customerName}'),
                        Text('Created: ${Formatters.date(order.createdAt)}'),
                        if (order.shipDate != null)
                          Text('Ship date: ${Formatters.date(order.shipDate!)}'),
                        if (order.totalAmount != null)
                          Text('Total: ${Formatters.currency(order.totalAmount!)}'),
                      ],
                    ),
                  ),
                  const Spacer(),
                  AppButton(
                    label: 'Pick Items',
                    onPressed: () => context.push(
                      '${RoutePaths.salesOrders}/$orderId/pick',
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
