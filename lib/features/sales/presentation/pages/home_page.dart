import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/app_card.dart';
import '../../../../core/widgets/sales/app_search_bar.dart';
import '../../../../core/widgets/sales/menu_list_tile.dart';
import '../../../../core/widgets/sales/pill_fab.dart';
import '../../../../core/widgets/sales/today_summary_card.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../cubit/home_cubit.dart';

/// Salesperson home screen.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeCubit>()..load(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user;
    final userLabel = user?.name ?? 'Guest';

    return Scaffold(
      backgroundColor: AppColors.neutral50,
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state.status == StateStatus.loading && state.data == null) {
              return const LoadingIndicator();
            }
            if (state.status == StateStatus.failure && state.data == null) {
              return ErrorStateView(
                title: 'Unable to load home',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<HomeCubit>().load(),
              );
            }

            final data = state.data;
            return RefreshIndicator(
              onRefresh: () => context.read<HomeCubit>().load(),
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.base),
                children: [
                  Row(
                    children: [
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Yene ',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: AppColors.neutral900,
                              ),
                            ),
                            TextSpan(
                              text: 'Stock',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () =>
                            context.push(RoutePaths.notifications),
                        icon: const Icon(LucideIcons.bell),
                      ),
                    ],
                  ),
                  Text(
                    'Sign in as: $userLabel',
                    style: const TextStyle(
                      fontSize: 13,
                      color: AppColors.neutral600,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.base),
                  if (data != null) ...[
                    TodaySummaryCard(
                      salesTotal: Formatters.currency(data.salesTotal),
                      expiringCount: data.expiringCount,
                      onViewReport: () =>
                          context.push(RoutePaths.salesReport),
                    ),
                    const SizedBox(height: AppSpacing.base),
                  ],
                  AppSearchBar(
                    hint: 'Search product',
                    onScan: () => context.push(RoutePaths.scan),
                    onChanged: (_) {},
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  const Text(
                    'Low Stock Reminder',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  if (data != null)
                    Row(
                      children: [
                        StatCard(
                          label: 'In Warehouse',
                          value: '${data.lowStockWarehouse}',
                          onTap: () => context.go(RoutePaths.warehouse),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        StatCard(
                          label: 'In Shop',
                          value: '${data.lowStockShop}',
                          onTap: () => context.go(RoutePaths.shop),
                        ),
                      ],
                    ),
                  const SizedBox(height: AppSpacing.lg),
                  const Text(
                    'History',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  AppCard(
                    padding: EdgeInsets.zero,
                    child: Column(
                      children: [
                        MenuListTile(
                          icon: LucideIcons.fileClock,
                          label: 'Sales history',
                          onTap: () =>
                              context.push(RoutePaths.salesHistory),
                        ),
                        const Divider(height: 1),
                        MenuListTile(
                          icon: LucideIcons.history,
                          label: 'General history',
                          onTap: () =>
                              context.push(RoutePaths.generalHistory),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.base),
                  Row(
                    children: [
                      Expanded(
                        child: AppCard(
                          onTap: () => context.push(RoutePaths.bulkAction),
                          child: const Row(
                            children: [
                              Icon(LucideIcons.boxes, color: AppColors.primary),
                              SizedBox(width: AppSpacing.sm),
                              Expanded(child: Text('Bulk action')),
                              Icon(Icons.chevron_right,
                                  color: AppColors.neutral400),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: AppCard(
                          onTap: () => context.push(RoutePaths.accounts),
                          child: const Row(
                            children: [
                              Icon(LucideIcons.landmark,
                                  color: AppColors.primary),
                              SizedBox(width: AppSpacing.sm),
                              Expanded(child: Text('Accounts')),
                              Icon(Icons.chevron_right,
                                  color: AppColors.neutral400),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: PillFab(
        label: 'Sale',
        icon: LucideIcons.shoppingBag,
        onPressed: () => context.push(RoutePaths.sale),
      ),
    );
  }
}
