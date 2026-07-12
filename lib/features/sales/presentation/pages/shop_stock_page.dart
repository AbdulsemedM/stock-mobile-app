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

/// Shop stock list for salesperson.
class ShopStockPage extends StatefulWidget {
  const ShopStockPage({super.key});

  @override
  State<ShopStockPage> createState() => _ShopStockPageState();
}

class _ShopStockPageState extends State<ShopStockPage> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StockCubit>()..load(locationType: 'shop'),
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
              const Expanded(
                child: StockListView(locationColor: AppColors.success),
              ),
            ],
          ),
        ),
        floatingActionButton: PillFab(
          label: 'Add item to Shop',
          backgroundColor: AppColors.success,
          onPressed: () => context.push(
            RoutePaths.addStockPath(location: 'shop'),
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
