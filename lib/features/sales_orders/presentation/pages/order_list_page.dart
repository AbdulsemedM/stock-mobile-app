import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/status_badge.dart';
import '../bloc/sales_order_bloc.dart';
import '../bloc/sales_order_event.dart';
import '../bloc/sales_order_state.dart';

/// Sales order list screen.
class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<SalesOrderBloc>()..add(const SalesOrderEvent.loadList()),
      child: BlocConsumer<SalesOrderBloc, SalesOrderState>(
        listener: (context, state) {
          if (state.errorMessage != null) {
            AppSnackbar.error(
              context,
              state.errorMessage!,
              onRetry: () => context
                  .read<SalesOrderBloc>()
                  .add(const SalesOrderEvent.loadList()),
            );
          }
        },
        builder: (context, state) {
          if (state.status == StateStatus.loading && state.orders.isEmpty) {
            return const LoadingIndicator.list();
          }
          if (state.status == StateStatus.failure && state.orders.isEmpty) {
            return ErrorStateView(
              title: 'Failed to load sales orders',
              description: state.errorMessage ?? '',
              onRetry: () => context
                  .read<SalesOrderBloc>()
                  .add(const SalesOrderEvent.loadList()),
            );
          }
          if (state.orders.isEmpty) {
            return const EmptyStateView(
              icon: LucideIcons.shoppingCart,
              title: 'No sales orders',
              description: 'Sales orders will appear here.',
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.base),
            itemCount: state.orders.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final order = state.orders[index];
              return ListTile(
                title: Text(order.soNumber),
                subtitle: Text(
                  '${order.customerName} · ${Formatters.date(order.createdAt)}',
                ),
                trailing: StatusBadge(status: order.status),
                onTap: () =>
                    context.push('${RoutePaths.salesOrders}/${order.id}'),
              );
            },
          );
        },
      ),
    );
  }
}
