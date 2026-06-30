import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/mock/mock_config.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/inputs/app_text_field.dart';
import '../../../onboarding/presentation/onboarding_assets.dart';
import '../../../onboarding/presentation/widgets/onboarding_background.dart';

/// Sign-up screen for creating a new Abay Stocks account.
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _fullNameController = TextEditingController();
  final _businessNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _businessNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final fullName = _fullNameController.text.trim();
    final businessName = _businessNameController.text.trim();
    final email = _emailController.text.trim();
    final phone = _phoneController.text.trim();
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (fullName.isEmpty ||
        businessName.isEmpty ||
        email.isEmpty ||
        phone.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      AppSnackbar.error(context, 'Please fill in all fields.');
      return;
    }

    if (!email.contains('@')) {
      AppSnackbar.error(context, 'Please enter a valid email address.');
      return;
    }

    if (password != confirmPassword) {
      AppSnackbar.error(context, 'Passwords do not match.');
      return;
    }

    setState(() => _isSubmitting = true);

    if (MockConfig.enabled) {
      await Future<void>.delayed(const Duration(milliseconds: 600));
      if (!mounted) return;
      setState(() => _isSubmitting = false);
      AppSnackbar.success(context, 'Account created. You can sign in now.');
      context.go(RoutePaths.login);
      return;
    }

    if (!mounted) return;
    setState(() => _isSubmitting = false);
    AppSnackbar.info(
      context,
      'Registration will be available when the backend is connected.',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      if (context.canPop()) {
                        context.pop();
                      } else {
                        context.go(RoutePaths.login);
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
                        Image.asset(
                          OnboardingAssets.logo,
                          height: 56,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: AppSpacing.xl),
                        Text(
                          'Create your account',
                          style: theme.textTheme.displayLarge?.copyWith(
                            color: AppColors.neutral900,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          'Fill in the detail to get started',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: AppColors.neutral600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: AppSpacing.xl),
                        AppTextField(
                          controller: _fullNameController,
                          hint: 'Enter your full name',
                          prefixIcon: const Icon(
                            LucideIcons.user,
                            color: AppColors.neutral400,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.base),
                        AppTextField(
                          controller: _businessNameController,
                          hint: 'Enter your Business name',
                          prefixIcon: const Icon(
                            LucideIcons.building2,
                            color: AppColors.neutral400,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.base),
                        AppTextField(
                          controller: _emailController,
                          hint: 'Enter your email',
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: const Icon(
                            LucideIcons.mail,
                            color: AppColors.neutral400,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.base),
                        AppTextField(
                          controller: _phoneController,
                          hint: 'Enter your phone number',
                          keyboardType: TextInputType.phone,
                          prefixIcon: const Icon(
                            LucideIcons.phone,
                            color: AppColors.neutral400,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.base),
                        AppTextField(
                          controller: _passwordController,
                          hint: 'Enter your Password',
                          obscureText: _obscurePassword,
                          prefixIcon: const Icon(
                            LucideIcons.lock,
                            color: AppColors.neutral400,
                            size: 20,
                          ),
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
                        const SizedBox(height: AppSpacing.base),
                        AppTextField(
                          controller: _confirmPasswordController,
                          hint: 'Enter your Confirm Password',
                          obscureText: _obscureConfirmPassword,
                          prefixIcon: const Icon(
                            LucideIcons.lock,
                            color: AppColors.neutral400,
                            size: 20,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => setState(
                              () => _obscureConfirmPassword =
                                  !_obscureConfirmPassword,
                            ),
                            icon: Icon(
                              _obscureConfirmPassword
                                  ? LucideIcons.eye
                                  : LucideIcons.eyeOff,
                              color: AppColors.neutral400,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xl),
                        AppButton(
                          label: 'Sign up',
                          isLoading: _isSubmitting,
                          onPressed: _submit,
                        ),
                        const SizedBox(height: AppSpacing.xl),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSpacing.lg,
                    right: AppSpacing.lg,
                    bottom: AppSpacing.xl,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      if (context.canPop()) {
                        context.pop();
                      } else {
                        context.go(RoutePaths.login);
                      }
                    },
                    child: Text.rich(
                      TextSpan(
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppColors.neutral600,
                        ),
                        children: [
                          const TextSpan(text: 'Already have an account? '),
                          TextSpan(
                            text: 'Login',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
