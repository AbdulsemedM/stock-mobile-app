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
import '../bloc/purchase_order_bloc.dart';
import '../bloc/purchase_order_event.dart';
import '../bloc/purchase_order_state.dart';

/// Purchase order list screen.
class PoListPage extends StatelessWidget {
  const PoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<PurchaseOrderBloc>()..add(const PurchaseOrderEvent.loadRequested()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Purchase Orders')),
        body: BlocConsumer<PurchaseOrderBloc, PurchaseOrderState>(
          listener: (context, state) {
            if (state.errorMessage != null &&
                state.status == StateStatus.failure &&
                state.purchaseOrders.isEmpty) {
              return;
            }
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context
                    .read<PurchaseOrderBloc>()
                    .add(const PurchaseOrderEvent.loadRequested()),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.purchaseOrders.isEmpty) {
              return const LoadingIndicator.list();
            }
            if (state.status == StateStatus.failure &&
                state.purchaseOrders.isEmpty) {
              return ErrorStateView(
                title: 'Failed to load purchase orders',
                description: state.errorMessage ?? '',
                onRetry: () => context
                    .read<PurchaseOrderBloc>()
                    .add(const PurchaseOrderEvent.loadRequested()),
              );
            }
            if (state.purchaseOrders.isEmpty) {
              return const EmptyStateView(
                icon: LucideIcons.truck,
                title: 'No purchase orders',
                description: 'Inbound purchase orders will appear here.',
              );
            }
            return RefreshIndicator(
              onRefresh: () async {
                context
                    .read<PurchaseOrderBloc>()
                    .add(const PurchaseOrderEvent.loadRequested());
                await context.read<PurchaseOrderBloc>().stream.firstWhere(
                      (s) => s.status != StateStatus.loading,
                    );
              },
              child: ListView.separated(
                padding: const EdgeInsets.all(AppSpacing.base),
                itemCount: state.purchaseOrders.length,
                separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
                itemBuilder: (context, index) {
                  final order = state.purchaseOrders[index];
                  return ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Color(0xFFE5E7EB)),
                    ),
                    title: Text(order.orderNumber),
                    subtitle: Text(
                      '${order.supplierName} · ${Formatters.date(order.orderDate)}',
                    ),
                    trailing: StatusBadge(status: order.status),
                    onTap: () => context.push(
                      RoutePaths.purchaseOrderDetailPath(order.id),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
