import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:stockflow/app/router/route_paths.dart';
import 'package:stockflow/core/di/injection.dart';
import 'package:stockflow/core/theme/app_spacing.dart';
import 'package:stockflow/core/utils/state_status.dart';
import 'package:stockflow/core/widgets/buttons/app_icon_button.dart';
import 'package:stockflow/core/widgets/feedback/app_snackbar.dart';
import 'package:stockflow/core/widgets/feedback/empty_state_view.dart';
import 'package:stockflow/core/widgets/feedback/error_state_view.dart';
import 'package:stockflow/core/widgets/feedback/loading_indicator.dart';
import 'package:stockflow/features/inventory/presentation/bloc/inventory_bloc.dart';
import 'package:stockflow/features/inventory/presentation/bloc/inventory_event.dart';
import 'package:stockflow/features/inventory/presentation/bloc/inventory_state.dart';
import 'package:stockflow/features/inventory/presentation/widgets/stock_level_tile.dart';

/// Stock levels list with warehouse filter and scan FAB.
class StockLevelsPage extends StatelessWidget {
  const StockLevelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<InventoryBloc>()..add(const InventoryEvent.loadRequested()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Inventory')),
        floatingActionButton: AppIconButton(
          onPressed: () => context.push(RoutePaths.scan),
        ),
        body: BlocConsumer<InventoryBloc, InventoryState>(
          listener: (context, state) {
            if (state.errorMessage != null &&
                state.status == StateStatus.failure &&
                state.stockLevels.isEmpty) {
              return;
            }
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context
                    .read<InventoryBloc>()
                    .add(const InventoryEvent.loadRequested()),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.stockLevels.isEmpty) {
              return const LoadingIndicator.list();
            }

            if (state.status == StateStatus.failure &&
                state.stockLevels.isEmpty) {
              return ErrorStateView(
                title: 'Unable to load inventory',
                description: state.errorMessage ?? 'Please try again',
                onRetry: () => context
                    .read<InventoryBloc>()
                    .add(const InventoryEvent.loadRequested()),
              );
            }

            return Column(
              children: [
                if (state.warehouseOptions.isNotEmpty)
                  _WarehouseFilterBar(state: state),
                Expanded(child: _buildStockList(context, state)),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildStockList(BuildContext context, InventoryState state) {
    if (state.stockLevels.isEmpty) {
      return EmptyStateView(
        icon: LucideIcons.warehouse,
        title: 'No stock levels yet',
        description: state.warehouseId == null
            ? 'Inventory data will appear here once stock is recorded.'
            : 'No stock found for the selected warehouse.',
        actionLabel: 'Refresh',
        onAction: () => context
            .read<InventoryBloc>()
            .add(const InventoryEvent.loadRequested()),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<InventoryBloc>().add(const InventoryEvent.loadRequested());
        await context.read<InventoryBloc>().stream.firstWhere(
              (state) => state.status != StateStatus.loading,
            );
      },
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.base,
          AppSpacing.sm,
          AppSpacing.base,
          AppSpacing.base,
        ),
        itemCount: state.stockLevels.length,
        separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
        itemBuilder: (context, index) {
          return StockLevelTile(stockLevel: state.stockLevels[index]);
        },
      ),
    );
  }
}

class _WarehouseFilterBar extends StatelessWidget {
  const _WarehouseFilterBar({required this.state});

  final InventoryState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.base,
        AppSpacing.base,
        AppSpacing.base,
        0,
      ),
      child: DropdownButtonFormField<String?>(
        initialValue: state.warehouseId,
        decoration: const InputDecoration(
          labelText: 'Warehouse',
          prefixIcon: Icon(LucideIcons.warehouse),
        ),
        items: [
          const DropdownMenuItem<String?>(
            value: null,
            child: Text('All warehouses'),
          ),
          ...state.warehouseOptions.map(
            (id) => DropdownMenuItem<String?>(
              value: id,
              child: Text(state.warehouses[id] ?? id),
            ),
          ),
        ],
        onChanged: (warehouseId) => context.read<InventoryBloc>().add(
              InventoryEvent.warehouseFilterChanged(warehouseId: warehouseId),
            ),
      ),
    );
  }
}
