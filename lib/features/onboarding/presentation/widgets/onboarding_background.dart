import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/theme/app_colors.dart';
import '../onboarding_assets.dart';

/// Decorative background for onboarding and auth screens.
class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({
    this.showScatteredIcons = true,
    super.key,
  });

  final bool showScatteredIcons;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primaryLight,
                AppColors.neutral50,
                AppColors.surface,
              ],
              stops: [0.0, 0.45, 1.0],
            ),
          ),
        ),
        const Positioned.fill(
          child: _WavyOverlay(),
        ),
        if (showScatteredIcons)
          const Positioned.fill(
            child: _ScatteredBackgroundIcons(),
          ),
      ],
    );
  }
}

class _WavyOverlay extends StatelessWidget {
  const _WavyOverlay();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      OnboardingAssets.wavyBackground,
      fit: BoxFit.cover,
      opacity: const AlwaysStoppedAnimation(0.35),
      errorBuilder: (_, __, ___) => CustomPaint(
        painter: _WavyPlaceholderPainter(),
        size: Size.infinite,
      ),
    );
  }
}

/// Fallback decorative waves until the wavy background asset is provided.
class _WavyPlaceholderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.secondary.withValues(alpha: 0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;

    for (var i = 0; i < 6; i++) {
      final path = Path();
      final xOffset = size.width * 0.12 * i;
      path.moveTo(xOffset, 0);
      for (var y = 0.0; y <= size.height; y += 40) {
        final x = xOffset + (i.isEven ? 18 : -18) * (y / size.height);
        path.lineTo(x, y);
      }
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Faint commerce/inventory icons scattered across the onboarding background.
class _ScatteredBackgroundIcons extends StatelessWidget {
  const _ScatteredBackgroundIcons();

  static const _faintOpacity = 0.14;
  static const _faintColor = AppColors.primary;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            _faintIcon(LucideIcons.pieChart, w * 0.08, h * 0.10, 28),
            _faintIcon(LucideIcons.shoppingCart, w * 0.40, h * 0.08, 30),
            _faintIcon(LucideIcons.package, w * 0.78, h * 0.11, 32),
            _faintIcon(LucideIcons.shoppingCart, w * 0.10, h * 0.34, 26),
            _faintIcon(LucideIcons.tag, w * 0.46, h * 0.20, 24),
            _faintIcon(LucideIcons.clipboardList, w * 0.82, h * 0.33, 30),
            _glowingBox(w * 0.44, h * 0.26),
            _glowingBox(w * 0.16, h * 0.46),
            _glowingBox(w * 0.76, h * 0.50),
          ],
        );
      },
    );
  }

  Widget _faintIcon(IconData icon, double left, double top, double size) {
    return Positioned(
      left: left,
      top: top,
      child: Icon(
        icon,
        size: size,
        color: _faintColor.withValues(alpha: _faintOpacity),
      ),
    );
  }

  Widget _glowingBox(double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.45),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withValues(alpha: 0.7),
              blurRadius: 18,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Icon(
          LucideIcons.box,
          size: 28,
          color: AppColors.primary.withValues(alpha: 0.35),
        ),
      ),
    );
  }
}
