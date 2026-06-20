import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/section_header.dart';
import '../cubit/dashboard_cubit.dart';
import '../cubit/dashboard_state.dart';
import '../widgets/kpi_card.dart';
import '../widgets/low_stock_alert_tile.dart';
import '../widgets/recent_activity_tile.dart';

/// Post-login landing screen with KPIs and alerts.
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DashboardCubit>()..load(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Dashboard')),
        body: BlocConsumer<DashboardCubit, DashboardState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context.read<DashboardCubit>().load(),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading && state.data == null) {
              return const LoadingIndicator();
            }
            if (state.status == StateStatus.failure && state.data == null) {
              return ErrorStateView(
                title: 'Unable to load dashboard',
                description: state.errorMessage ?? 'Please try again',
                onRetry: () => context.read<DashboardCubit>().load(),
              );
            }
            final data = state.data;
            if (data == null) {
              return const EmptyStateView(
                icon: LucideIcons.layoutDashboard,
                title: 'No data yet',
                description: 'Dashboard metrics will appear here.',
              );
            }
            return RefreshIndicator(
              onRefresh: () => context.read<DashboardCubit>().load(),
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.base),
                children: [
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: AppSpacing.md,
                    crossAxisSpacing: AppSpacing.md,
                    childAspectRatio: 1.4,
                    children: data.kpis
                        .map((k) => KpiCard(
                              label: k.label,
                              value: k.value,
                              trend: k.trend,
                            ))
                        .toList(),
                  ),
                  const SectionHeader(title: 'Low Stock Alerts'),
                  if (data.lowStockAlerts.isEmpty)
                    const Text('No low stock items')
                  else
                    ...data.lowStockAlerts.map((a) => LowStockAlertTile(alert: a)),
                  const SectionHeader(title: 'Recent Activity'),
                  if (data.recentActivity.isEmpty)
                    const Text('No recent activity')
                  else
                    ...data.recentActivity.map((a) => RecentActivityTile(activity: a)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
