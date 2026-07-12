import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/sales/menu_list_tile.dart';
import '../../../../core/widgets/sales/profile_header.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';
import '../../../onboarding/presentation/onboarding_assets.dart';
import '../cubit/settings_cubit.dart';
import '../cubit/settings_state.dart';

/// Settings screen with profile-style layout.
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SettingsCubit>()..load(),
      child: Scaffold(
        backgroundColor: AppColors.neutral50,
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

            return Column(
              children: [
                ProfileHeader(
                  storeName: 'StockFlow Admin',
                  address: 'Warehouse & distribution management',
                  logoAsset: OnboardingAssets.logo,
                ),
                Expanded(
                  child: Transform.translate(
                    offset: const Offset(0, -16),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(AppRadius.lg),
                        ),
                      ),
                      child: ListView(
                        padding: const EdgeInsets.all(AppSpacing.base),
                        children: [
                          MenuListTile(
                            icon: LucideIcons.warehouse,
                            label: 'Default Warehouse',
                            onTap: () =>
                                context.push(RoutePaths.warehouseSelector),
                          ),
                          if (selectedName != null)
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppSpacing.lg,
                                bottom: AppSpacing.sm,
                              ),
                              child: Text(
                                selectedName,
                                style: const TextStyle(
                                  color: AppColors.neutral600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          const SizedBox(height: AppSpacing.lg),
                          MenuListTile(
                            icon: LucideIcons.logOut,
                            label: 'Sign Out',
                            onTap: () {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.logoutRequested());
                              context.go(RoutePaths.login);
                            },
                          ),
                        ],
                      ),
                    ),
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
