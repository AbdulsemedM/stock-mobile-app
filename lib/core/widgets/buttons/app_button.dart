import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';

/// Button style variants for consistent actions across the app.
enum AppButtonVariant { primary, secondary, text, danger }

/// Primary action button with loading and disabled states.
class AppButton extends StatelessWidget {
  const AppButton({
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.isLoading = false,
    this.isDisabled = false,
    this.fullWidth = true,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final bool isLoading;
  final bool isDisabled;
  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final enabled = !isDisabled && !isLoading && onPressed != null;

    Widget child = isLoading
        ? const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Colors.white,
            ),
          )
        : Text(
            label,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: _labelColor(enabled),
            ),
          );

    final button = SizedBox(
      height: 48,
      width: fullWidth ? double.infinity : null,
      child: Material(
        color: _backgroundColor(enabled),
        borderRadius: BorderRadius.circular(AppRadius.md),
        child: InkWell(
          onTap: enabled ? onPressed : null,
          borderRadius: BorderRadius.circular(AppRadius.md),
          splashColor: _splashColor(),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.md),
              border: _border(enabled),
            ),
            child: child,
          ),
        ),
      ),
    );

    return button;
  }

  Color _backgroundColor(bool enabled) {
    if (variant == AppButtonVariant.text) return Colors.transparent;
    if (!enabled) {
      return variant == AppButtonVariant.secondary
          ? Colors.transparent
          : AppColors.neutral100;
    }
    return switch (variant) {
      AppButtonVariant.primary => AppColors.primary,
      AppButtonVariant.secondary => Colors.transparent,
      AppButtonVariant.text => Colors.transparent,
      AppButtonVariant.danger => AppColors.error,
    };
  }

  Color? _labelColor(bool enabled) {
    if (!enabled) return AppColors.neutral400;
    return switch (variant) {
      AppButtonVariant.primary => Colors.white,
      AppButtonVariant.secondary => AppColors.primary,
      AppButtonVariant.text => AppColors.primary,
      AppButtonVariant.danger => Colors.white,
    };
  }

  Border? _border(bool enabled) {
    if (variant == AppButtonVariant.secondary) {
      return Border.all(
        color: enabled ? AppColors.primary : AppColors.neutral400,
        width: 1.5,
      );
    }
    return null;
  }

  Color? _splashColor() {
    return switch (variant) {
      AppButtonVariant.primary => AppColors.primaryDark,
      AppButtonVariant.secondary => AppColors.primaryLight,
      AppButtonVariant.text => AppColors.primaryLight.withValues(alpha: 0.3),
      AppButtonVariant.danger => AppColors.error.withValues(alpha: 0.8),
    };
  }
}
