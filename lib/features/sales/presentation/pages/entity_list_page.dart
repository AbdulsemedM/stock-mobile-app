import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/app_card.dart';
import '../cubit/entity_list_cubit.dart';

/// Generic entity list for profile sub-screens and history.
class EntityListPage extends StatelessWidget {
  const EntityListPage({
    required this.title,
    required this.type,
    super.key,
  });

  final String title;
  final EntityListType type;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EntityListCubit>()..load(type),
      child: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: BlocBuilder<EntityListCubit, EntityListState>(
          builder: (context, state) {
            if (state.status == StateStatus.loading && state.items.isEmpty) {
              return const LoadingIndicator.list();
            }
            if (state.status == StateStatus.failure && state.items.isEmpty) {
              return ErrorStateView(
                title: 'Unable to load',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<EntityListCubit>().load(type),
              );
            }
            if (state.items.isEmpty) {
              return EmptyStateView(
                icon: LucideIcons.inbox,
                title: 'No $title',
                description: 'Nothing to show yet.',
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.all(AppSpacing.base),
              itemCount: state.items.length,
              separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.sm),
              itemBuilder: (context, index) {
                final item = state.items[index];
                return AppCard(
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(item.title),
                    subtitle: item.subtitle != null
                        ? Text(item.subtitle!)
                        : null,
                    trailing: item.trailing != null
                        ? Text(
                            item.trailing!,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          )
                        : null,
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: _showFab(type)
            ? FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              )
            : null,
      ),
    );
  }

  bool _showFab(EntityListType type) {
    return type == EntityListType.customers ||
        type == EntityListType.expenses ||
        type == EntityListType.suppliers;
  }
}

/// Tools page for salesperson.
class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tools')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.base),
        children: [
          AppCard(
            onTap: () => context.push(RoutePaths.scan),
            child: const ListTile(
              leading: Icon(LucideIcons.scanLine),
              title: Text('Barcode Scanner'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          AppCard(
            onTap: () => context.push(RoutePaths.transfers),
            child: const ListTile(
              leading: Icon(LucideIcons.arrowLeftRight),
              title: Text('Stock Transfers'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          AppCard(
            onTap: () => context.push(RoutePaths.products),
            child: const ListTile(
              leading: Icon(LucideIcons.package),
              title: Text('Product Catalog'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}

/// Sales report page from home summary.
class SalesReportPage extends StatelessWidget {
  const SalesReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final summary = MockDataStore.salesHomeSummary;
    return Scaffold(
      appBar: AppBar(title: const Text('Sales Report')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.base),
        children: [
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Today', style: TextStyle(fontWeight: FontWeight.w700)),
                const SizedBox(height: AppSpacing.sm),
                Text('Total sales: ${summary.salesTotal.toStringAsFixed(2)}'),
                Text('Expiring items: ${summary.expiringCount}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Bulk action placeholder.
class BulkActionPage extends StatelessWidget {
  const BulkActionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bulk Action')),
      body: const Center(child: Text('Bulk stock and sale operations')),
    );
  }
}

/// Accounts ledger placeholder.
class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accounts')),
      body: const Center(child: Text('Accounts ledger')),
    );
  }
}
