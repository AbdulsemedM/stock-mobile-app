import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/app_card.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';
import '../cubit/settings_cubit.dart';
import '../cubit/settings_state.dart';

/// Settings screen.
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SettingsCubit>()..load(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Settings')),
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
              return const LoadingIndicator();
            }
            if (state.status == StateStatus.failure &&
                state.warehouses.isEmpty) {
              return ErrorStateView(
                title: 'Failed to load settings',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<SettingsCubit>().load(),
              );
            }

            final selectedName = state.warehouses
                .where((w) => w.id == state.selectedWarehouseId)
                .map((w) => w.name)
                .firstOrNull;

            return ListView(
              padding: const EdgeInsets.all(AppSpacing.base),
              children: [
                AppCard(
                  onTap: () => context.push(RoutePaths.warehouseSelector),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(LucideIcons.warehouse),
                    title: const Text('Default Warehouse'),
                    subtitle: Text(selectedName ?? 'Not selected'),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                AppCard(
                  onTap: () {
                    context.read<AuthBloc>().add(
                          const AuthEvent.logoutRequested(),
                        );
                    context.go(RoutePaths.login);
                  },
                  child: const ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(LucideIcons.logOut, color: Colors.red),
                    title: Text('Sign Out'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
