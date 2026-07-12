import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/route_paths.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/sales/app_search_bar.dart';
import '../../../../core/widgets/sales/credit_list_tile.dart';
import '../../../../core/widgets/sales/filter_sort_bar.dart';
import '../../../../core/widgets/sales/pill_fab.dart';
import '../cubit/credit_cubit.dart';

/// Credit/unpaid sales screen.
class CreditPage extends StatefulWidget {
  const CreditPage({super.key});

  @override
  State<CreditPage> createState() => _CreditPageState();
}

class _CreditPageState extends State<CreditPage> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CreditCubit>()..load(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSpacing.base),
                child: AppSearchBar(
                  controller: _searchController,
                  hint: 'Cheque No, customer name, ph...',
                  onChanged: (q) =>
                      context.read<CreditCubit>().searchChanged(q),
                  onScan: () => context.push(RoutePaths.scan),
                ),
              ),
              FilterSortBar(
                showCollection: false,
                onFilter: () => _showSheet(context, 'Filter'),
                onSort: () => _showSheet(context, 'Sort by'),
              ),
              BlocBuilder<CreditCubit, CreditState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.base,
                      vertical: AppSpacing.sm,
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Total Due',
                          style: TextStyle(color: AppColors.neutral600),
                        ),
                        const Spacer(),
                        Text(
                          Formatters.currency(state.totalDue),
                          style: const TextStyle(
                            color: AppColors.error,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Expanded(child: _CreditList()),
            ],
          ),
        ),
        floatingActionButton: CircleActionFab(
          onPressed: () => context.push(RoutePaths.customers),
        ),
      ),
    );
  }

  void _showSheet(BuildContext context, String title) {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Text('$title options'),
      ),
    );
  }
}

class _CreditList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreditCubit, CreditState>(
      builder: (context, state) {
        if (state.status == StateStatus.loading && state.entries.isEmpty) {
          return const LoadingIndicator.list();
        }
        if (state.status == StateStatus.failure && state.entries.isEmpty) {
          return ErrorStateView(
            title: 'Unable to load credits',
            description: state.errorMessage ?? '',
            onRetry: () => context.read<CreditCubit>().load(),
          );
        }
        if (state.entries.isEmpty) {
          return const EmptyStateView(
            icon: LucideIcons.receipt,
            title: 'No credits',
            description: 'No unpaid transactions found.',
          );
        }
        return ListView.separated(
          itemCount: state.entries.length,
          separatorBuilder: (_, __) =>
              const Divider(height: 1, indent: 16, endIndent: 16),
          itemBuilder: (context, index) {
            final entry = state.entries[index];
            return CreditListTile(
              customerName: entry.customerName,
              amount: entry.amount,
              itemCount: entry.itemCount,
              status: entry.status,
              date: entry.date,
              onTap: () => context.push(
                RoutePaths.creditDetailPath(entry.id),
              ),
            );
          },
        );
      },
    );
  }
}
