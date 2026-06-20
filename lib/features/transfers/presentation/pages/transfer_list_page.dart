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
import '../bloc/transfer_bloc.dart';
import '../bloc/transfer_event.dart';
import '../bloc/transfer_state.dart';

/// Stock transfer list screen.
class TransferListPage extends StatelessWidget {
  const TransferListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<TransferBloc>()..add(const TransferEvent.loadList()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Stock Transfers')),
        body: BlocConsumer<TransferBloc, TransferState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context
                    .read<TransferBloc>()
                    .add(const TransferEvent.loadList()),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.transfers.isEmpty) {
              return const LoadingIndicator.list();
            }
            if (state.status == StateStatus.failure &&
                state.transfers.isEmpty) {
              return ErrorStateView(
                title: 'Failed to load transfers',
                description: state.errorMessage ?? '',
                onRetry: () => context
                    .read<TransferBloc>()
                    .add(const TransferEvent.loadList()),
              );
            }
            if (state.transfers.isEmpty) {
              return const EmptyStateView(
                icon: LucideIcons.arrowLeftRight,
                title: 'No stock transfers',
                description: 'Transfers between warehouses will appear here.',
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.all(AppSpacing.base),
              itemCount: state.transfers.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final transfer = state.transfers[index];
                return ListTile(
                  title: Text(transfer.transferNumber),
                  subtitle: Text(
                    '${transfer.fromWarehouseName} → ${transfer.toWarehouseName} · ${Formatters.date(transfer.createdAt)}',
                  ),
                  trailing: StatusBadge(status: transfer.status),
                  onTap: () =>
                      context.push(RoutePaths.transferDetailPath(transfer.id)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
