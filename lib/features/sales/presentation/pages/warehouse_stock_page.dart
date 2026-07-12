import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/sales/app_search_bar.dart';
import '../../../../core/widgets/sales/filter_sort_bar.dart';
import '../../../../core/widgets/sales/pill_fab.dart';
import '../cubit/stock_cubit.dart';
import '../widgets/stock_list_view.dart';

/// Warehouse stock list for salesperson.
class WarehouseStockPage extends StatefulWidget {
  const WarehouseStockPage({super.key});

  @override
  State<WarehouseStockPage> createState() => _WarehouseStockPageState();
}

class _WarehouseStockPageState extends State<WarehouseStockPage> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StockCubit>()..load(locationType: 'warehouse'),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSpacing.base),
                child: AppSearchBar(
                  controller: _searchController,
                  hint: 'Search',
                  onChanged: (q) =>
                      context.read<StockCubit>().searchChanged(q),
                  onScan: () => context.push(RoutePaths.scan),
                ),
              ),
              FilterSortBar(
                onFilter: () => _showSheet(context, 'Filter'),
                onSort: () => _showSheet(context, 'Sort by'),
                onCollection: () => _showSheet(context, 'Collection'),
              ),
              Expanded(child: StockListView(locationColor: AppColors.accent)),
            ],
          ),
        ),
        floatingActionButton: PillFab(
          label: 'Add item to Warehouse',
          onPressed: () => context.push(
            RoutePaths.addStockPath(location: 'warehouse'),
          ),
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
