import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../cubit/settings_cubit.dart';
import '../cubit/settings_state.dart';

/// Warehouse selector screen.
class WarehouseSelectorPage extends StatelessWidget {
  const WarehouseSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SettingsCubit>()..load(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Select Warehouse')),
        body: BlocConsumer<SettingsCubit, SettingsState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context.read<SettingsCubit>().load(),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.warehouses.isEmpty) {
              return const LoadingIndicator.list();
            }
            if (state.status == StateStatus.failure &&
                state.warehouses.isEmpty) {
              return ErrorStateView(
                title: 'Failed to load warehouses',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<SettingsCubit>().load(),
              );
            }
            if (state.warehouses.isEmpty) {
              return const EmptyStateView(
                icon: LucideIcons.warehouse,
                title: 'No warehouses',
                description: 'Warehouses will appear here once configured.',
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.all(AppSpacing.base),
              itemCount: state.warehouses.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final warehouse = state.warehouses[index];
                final isSelected = warehouse.id == state.selectedWarehouseId;
                return ListTile(
                  leading: Icon(
                    isSelected
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  ),
                  title: Text(warehouse.name),
                  subtitle: warehouse.code != null
                      ? Text(warehouse.code!)
                      : warehouse.address != null
                          ? Text(warehouse.address!)
                          : null,
                  onTap: () async {
                    await context
                        .read<SettingsCubit>()
                        .selectWarehouse(warehouse.id);
                    if (context.mounted) {
                      AppSnackbar.success(
                        context,
                        'Warehouse set to ${warehouse.name}',
                      );
                      context.pop();
                    }
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
