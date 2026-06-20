import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';

/// Static snackbar helpers — only call from BlocListener/BlocConsumer.
class AppSnackbar {
  AppSnackbar._();

  static void success(BuildContext context, String message) {
    _show(
      context,
      message: message,
      backgroundColor: AppColors.success,
      textColor: Colors.white,
      icon: Icons.check_circle,
      duration: const Duration(seconds: 3),
    );
  }

  static void error(
    BuildContext context,
    String message, {
    VoidCallback? onRetry,
  }) {
    _show(
      context,
      message: message,
      backgroundColor: AppColors.error,
      textColor: Colors.white,
      icon: Icons.error_outline,
      duration: const Duration(seconds: 4),
      action: onRetry != null
          ? SnackBarAction(
              label: 'Retry',
              textColor: Colors.white,
              onPressed: onRetry,
            )
          : null,
    );
  }

  static void warning(BuildContext context, String message) {
    _show(
      context,
      message: message,
      backgroundColor: AppColors.warning,
      textColor: AppColors.neutral900,
      icon: Icons.warning_amber_rounded,
      duration: const Duration(milliseconds: 3500),
    );
  }

  static void info(BuildContext context, String message) {
    _show(
      context,
      message: message,
      backgroundColor: AppColors.info,
      textColor: Colors.white,
      icon: Icons.info_outline,
      duration: const Duration(seconds: 3),
    );
  }

  static void _show(
    BuildContext context, {
    required String message,
    required Color backgroundColor,
    required Color textColor,
    required IconData icon,
    required Duration duration,
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        backgroundColor: backgroundColor,
        duration: duration,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
        ),
        content: Row(
          children: [
            Icon(icon, color: textColor, size: 20),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: TextStyle(color: textColor),
              ),
            ),
          ],
        ),
        action: action,
      ),
    );
  }
}
