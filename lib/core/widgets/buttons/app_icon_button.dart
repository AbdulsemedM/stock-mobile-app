import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

/// Circular scan FAB used on inventory, receiving, picking, and cycle count screens.
class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.onPressed,
    this.icon = Icons.qr_code_scanner,
    super.key,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: Material(
        elevation: 2,
        color: AppColors.primary,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Icon(icon, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
