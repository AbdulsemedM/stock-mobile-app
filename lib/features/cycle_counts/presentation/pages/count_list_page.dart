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
import '../bloc/cycle_count_bloc.dart';
import '../bloc/cycle_count_event.dart';
import '../bloc/cycle_count_state.dart';

/// Cycle count list screen.
class CountListPage extends StatelessWidget {
  const CountListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<CycleCountBloc>()..add(const CycleCountEvent.loadList()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Cycle Counts')),
        body: BlocConsumer<CycleCountBloc, CycleCountState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context
                    .read<CycleCountBloc>()
                    .add(const CycleCountEvent.loadList()),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading && state.counts.isEmpty) {
              return const LoadingIndicator.list();
            }
            if (state.status == StateStatus.failure && state.counts.isEmpty) {
              return ErrorStateView(
                title: 'Failed to load cycle counts',
                description: state.errorMessage ?? '',
                onRetry: () => context
                    .read<CycleCountBloc>()
                    .add(const CycleCountEvent.loadList()),
              );
            }
            if (state.counts.isEmpty) {
              return const EmptyStateView(
                icon: LucideIcons.clipboardCheck,
                title: 'No cycle counts',
                description: 'Scheduled counts will appear here.',
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.all(AppSpacing.base),
              itemCount: state.counts.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final count = state.counts[index];
                return ListTile(
                  title: Text(count.countNumber),
                  subtitle: Text(
                    '${count.warehouseName} · ${Formatters.date(count.createdAt)}',
                  ),
                  trailing: StatusBadge(status: count.status),
                  onTap: () =>
                      context.push(RoutePaths.cycleCountEntryPath(count.id)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
