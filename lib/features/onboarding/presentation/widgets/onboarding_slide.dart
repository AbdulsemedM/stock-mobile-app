import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/buttons/app_button.dart';

/// Single onboarding slide with shared headline layout and optional center image.
class OnboardingSlide extends StatelessWidget {
  const OnboardingSlide({
    required this.title,
    required this.subtitle,
    required this.footer,
    this.centerImage,
    this.showGetStarted = false,
    this.onGetStarted,
    super.key,
  });

  final String title;
  final String subtitle;
  final String footer;
  final Widget? centerImage;
  final bool showGetStarted;
  final VoidCallback? onGetStarted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        children: [
          const SizedBox(height: AppSpacing.xxl),
          if (centerImage != null) ...[
            Expanded(child: Center(child: centerImage)),
          ] else
            const Spacer(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: AppColors.neutral600,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          if (showGetStarted) ...[
            AppButton(
              label: 'Get Started',
              onPressed: onGetStarted,
            ),
            const SizedBox(height: AppSpacing.base),
          ],
          Text(
            footer,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium?.copyWith(
              color: AppColors.neutral900,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
        ],
      ),
    );
  }
}

/// Rounded frame for the app preview image on slide 3.
class OnboardingAppPreview extends StatelessWidget {
  const OnboardingAppPreview({
    required this.imagePath,
    super.key,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.lg),
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
        height: 280,
      ),
    );
  }
}

/// Logo image for slide 1.
class OnboardingLogo extends StatelessWidget {
  const OnboardingLogo({
    required this.imagePath,
    super.key,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: 80,
      fit: BoxFit.contain,
    );
  }
}

/// Illustration image for slide 2.
class OnboardingIllustration extends StatelessWidget {
  const OnboardingIllustration({
    required this.imagePath,
    super.key,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.contain,
      height: 260,
    );
  }
}
