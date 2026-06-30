import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/di/injection.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/state_status.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/onboarding/data/repositories/onboarding_repository.dart';
import '../../features/onboarding/presentation/onboarding_assets.dart';
import '../router/route_paths.dart';

/// Branded splash screen shown briefly on every cold start.
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const _tagline = 'Track · Scan · Manage';
  static const _minDisplayDuration = Duration(milliseconds: 2500);
  static const _waveHeight = 0.56;

  @override
  void initState() {
    super.initState();
    _navigateNext();
  }

  Future<void> _navigateNext() async {
    final authBloc = getIt<AuthBloc>();

    await Future.wait([
      Future<void>.delayed(_minDisplayDuration),
      authBloc.stream.firstWhere((state) => state.status != StateStatus.loading),
    ]);

    if (!mounted) return;

    final onboardingCompleted = getIt<OnboardingRepository>().isCompleted;
    final isAuthenticated = authBloc.state.isAuthenticated;

    if (!onboardingCompleted) {
      context.go(RoutePaths.onboarding);
    } else if (isAuthenticated) {
      context.go(RoutePaths.dashboard);
    } else {
      context.go(RoutePaths.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: Stack(
        fit: StackFit.expand,
        children: [
          ClipPath(
            clipper: const _SplashWaveClipper(waveHeight: _waveHeight),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.primaryDark,
                    AppColors.primary,
                    AppColors.primaryLight,
                    AppColors.surface,
                  ],
                  stops: [0.0, 0.22, 0.68, 1.0],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: height * _waveHeight,
            child: Center(
              child: Image.asset(
                OnboardingAssets.logo,
                height: 80,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: height * (_waveHeight + 0.14),
            child: Text(
              _tagline,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.neutral900,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Curved bottom edge for the green splash header.
class _SplashWaveClipper extends CustomClipper<Path> {
  const _SplashWaveClipper({required this.waveHeight});

  /// Fraction of screen height where the green section ends.
  final double waveHeight;

  @override
  Path getClip(Size size) {
    final waveY = size.height * waveHeight;
    final dipY = size.height * (waveHeight + 0.06);

    final path = Path()
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, waveY)
      ..quadraticBezierTo(
        size.width * 0.5,
        dipY,
        0,
        waveY,
      )
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
