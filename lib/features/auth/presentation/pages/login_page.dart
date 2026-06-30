import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/mock/mock_config.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/inputs/app_text_field.dart';
import '../../../onboarding/presentation/onboarding_assets.dart';
import '../../../onboarding/presentation/widgets/onboarding_background.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

/// Login screen for Abay Stocks authentication.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _companyController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    if (MockConfig.enabled) {
      _companyController.text = 'demo@stockflow.com';
      _passwordController.text = 'demo';
    }
  }

  @override
  void dispose() {
    _companyController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    context.read<AuthBloc>().add(
          AuthEvent.loginSubmitted(
            email: _companyController.text.trim().isEmpty
                ? 'demo@stockflow.com'
                : _companyController.text.trim(),
            password: _passwordController.text,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const OnboardingBackground(showScatteredIcons: false),
          SafeArea(
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.isAuthenticated && state.user != null) {
                  context.go(RoutePaths.dashboard);
                }
                if (state.errorMessage != null) {
                  AppSnackbar.error(context, state.errorMessage!);
                }
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          if (context.canPop()) {
                            context.pop();
                          }
                        },
                        icon: const Icon(
                          LucideIcons.arrowLeft,
                          color: AppColors.neutral900,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.lg,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: AppSpacing.lg),
                            Image.asset(
                              OnboardingAssets.logo,
                              height: 56,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: AppSpacing.xl),
                            Text(
                              'Welcome Back!',
                              style: theme.textTheme.displayLarge?.copyWith(
                                color: AppColors.neutral900,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            Text(
                              'Sign in to manage your inventory.',
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: AppColors.neutral600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: AppSpacing.xxl),
                            AppTextField(
                              controller: _companyController,
                              hint: 'Enter your company name',
                            ),
                            const SizedBox(height: AppSpacing.base),
                            AppTextField(
                              controller: _passwordController,
                              hint: 'Enter your company password',
                              obscureText: _obscurePassword,
                              suffixIcon: IconButton(
                                onPressed: () => setState(
                                  () => _obscurePassword = !_obscurePassword,
                                ),
                                icon: Icon(
                                  _obscurePassword
                                      ? LucideIcons.eye
                                      : LucideIcons.eyeOff,
                                  color: AppColors.neutral400,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xl),
                            AppButton(
                              label: 'Login',
                              isLoading: state.status == StateStatus.loading,
                              onPressed: () => _submit(context),
                            ),
                            const SizedBox(height: AppSpacing.lg),
                            GestureDetector(
                              onTap: () => context.push(RoutePaths.signup),
                              child: Text.rich(
                                TextSpan(
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: AppColors.neutral600,
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: "Don't have an account? ",
                                    ),
                                    TextSpan(
                                      text: 'Sign up',
                                      style:
                                          theme.textTheme.bodyMedium?.copyWith(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xl),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
