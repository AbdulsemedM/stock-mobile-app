import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/app_card.dart';
import '../../../../core/widgets/layout/status_badge.dart';
import '../bloc/transfer_bloc.dart';
import '../bloc/transfer_event.dart';
import '../bloc/transfer_state.dart';

/// Stock transfer detail screen.
class TransferDetailPage extends StatelessWidget {
  const TransferDetailPage({required this.transferId, super.key});

  final String transferId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TransferBloc>()
        ..add(TransferEvent.loadDetail(transferId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Stock Transfer')),
        body: BlocConsumer<TransferBloc, TransferState>(
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
                title: 'Failed to load transfer',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<TransferBloc>().add(
                      TransferEvent.loadDetail(transferId),
                    ),
              );
            }
            final transfer = state.selectedTransfer;
            if (transfer == null) return const SizedBox.shrink();
            return Padding(
              padding: const EdgeInsets.all(AppSpacing.base),
              child: AppCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            transfer.transferNumber,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        StatusBadge(status: transfer.status),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text('From: ${transfer.fromWarehouseName}'),
                    Text('To: ${transfer.toWarehouseName}'),
                    Text('Created: ${Formatters.date(transfer.createdAt)}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
