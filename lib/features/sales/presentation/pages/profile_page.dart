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
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/sales/menu_list_tile.dart';
import '../../../../core/widgets/sales/profile_header.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';
import '../../../onboarding/presentation/onboarding_assets.dart';
import '../cubit/profile_cubit.dart';

/// Salesperson profile screen.
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileCubit>()..load(),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  static final _menuItems = [
    (icon: LucideIcons.userPlus, label: 'My customers', route: RoutePaths.customers),
    (icon: LucideIcons.circleDollarSign, label: 'Expense', route: RoutePaths.expenses),
    (icon: LucideIcons.plusSquare, label: 'My collections', route: RoutePaths.collections),
    (icon: LucideIcons.truck, label: 'My Suppliers', route: RoutePaths.suppliers),
    (icon: LucideIcons.network, label: 'My Branches', route: RoutePaths.branches),
    (icon: LucideIcons.userCog, label: 'User management', route: RoutePaths.userManagement),
    (icon: LucideIcons.creditCard, label: 'My Credits', route: RoutePaths.myCredits),
    (icon: LucideIcons.wrench, label: 'Tools', route: RoutePaths.tools),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral50,
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          final profile = state.profile;
          if (state.status == StateStatus.loading && profile == null) {
            return const LoadingIndicator();
          }

          return Column(
            children: [
              ProfileHeader(
                storeName: profile?.name ?? 'ABAY MART',
                address: profile?.address ?? '',
                logoAsset: OnboardingAssets.logo,
                onManual: () {},
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
                        const Center(
                          child: Column(
                            children: [
                              Icon(
                                LucideIcons.hexagon,
                                color: AppColors.neutral400,
                                size: 28,
                              ),
                              SizedBox(height: AppSpacing.xs),
                              Text(
                                'General setting',
                                style: TextStyle(
                                  color: AppColors.neutral400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AppSpacing.base),
                        ..._menuItems.map(
                          (item) => Padding(
                            padding: const EdgeInsets.only(
                              bottom: AppSpacing.sm,
                            ),
                            child: MenuListTile(
                              icon: item.icon,
                              label: item.label,
                              onTap: () => context.push(item.route),
                            ),
                          ),
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEvent.logoutRequested());
          context.go(RoutePaths.login);
        },
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.primary,
        elevation: 2,
        icon: const Icon(LucideIcons.logOut),
        label: const Text('Logout'),
      ),
    );
  }
}
