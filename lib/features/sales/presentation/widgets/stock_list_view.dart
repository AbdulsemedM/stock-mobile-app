import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/sales/sales_product_tile.dart';
import '../cubit/stock_cubit.dart';

/// Shared stock list for warehouse and shop pages.
class StockListView extends StatelessWidget {
  const StockListView({required this.locationColor, super.key});

  final Color locationColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StockCubit, StockState>(
      builder: (context, state) {
        if (state.status == StateStatus.loading && state.items.isEmpty) {
          return const LoadingIndicator.list();
        }
        if (state.status == StateStatus.failure && state.items.isEmpty) {
          return ErrorStateView(
            title: 'Unable to load stock',
            description: state.errorMessage ?? '',
            onRetry: () => context.read<StockCubit>().refresh(),
          );
        }
        final items = state.filteredItems;
        if (items.isEmpty) {
          return const EmptyStateView(
            icon: LucideIcons.package,
            title: 'No items',
            description: 'No stock items found.',
          );
        }
        return RefreshIndicator(
          onRefresh: () => context.read<StockCubit>().refresh(),
          child: ListView.separated(
            itemCount: items.length,
            separatorBuilder: (_, __) =>
                const Divider(height: 1, indent: 16, endIndent: 16),
            itemBuilder: (context, index) {
              final item = items[index];
              return SalesProductTile(
                name: item.name,
                partNumber: item.partNumber,
                location: item.location,
                price: item.price,
                quantity: item.quantity,
                imageUrl: item.imageUrl,
                locationColor: locationColor,
                onMenu: () => _showItemMenu(context, item.name),
              );
            },
          ),
        );
      },
    );
  }

  void _showItemMenu(BuildContext context, String name) {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(title: Text('View $name')),
          ListTile(title: Text('Edit quantity')),
          ListTile(title: Text('Transfer')),
        ],
      ),
    );
  }
}
