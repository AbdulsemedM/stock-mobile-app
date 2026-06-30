import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../data/repositories/onboarding_repository.dart';
import '../onboarding_assets.dart';
import '../widgets/onboarding_background.dart';
import '../widgets/onboarding_page_indicator.dart';
import '../widgets/onboarding_skip_button.dart';
import '../widgets/onboarding_slide.dart';

/// Three-page first-launch onboarding flow for Abay Stocks.
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static const _title = 'Smart inventory management';
  static const _subtitle = 'Manage your inventory anytime, anywhere.';
  static const _footer = 'Track · Scan · Manage';

  final _pageController = PageController();
  int _currentPage = 0;

  OnboardingRepository get _repository => getIt<OnboardingRepository>();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _completeOnboarding() async {
    await _repository.markCompleted();
    if (!mounted) return;
    context.go(RoutePaths.login);
  }

  void _onPageChanged(int page) {
    setState(() => _currentPage = page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const OnboardingBackground(),
          SafeArea(
            child: Column(
              children: [
                OnboardingSkipButton(onPressed: _completeOnboarding),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    children: [
                      const OnboardingSlide(
                        title: _title,
                        subtitle: _subtitle,
                        footer: _footer,
                        centerImage: OnboardingLogo(
                          imagePath: OnboardingAssets.logo,
                        ),
                      ),
                      const OnboardingSlide(
                        title: _title,
                        subtitle: _subtitle,
                        footer: _footer,
                        centerImage: OnboardingIllustration(
                          imagePath: OnboardingAssets.illustration,
                        ),
                      ),
                      OnboardingSlide(
                        title: _title,
                        subtitle: _subtitle,
                        footer: _footer,
                        showGetStarted: true,
                        onGetStarted: _completeOnboarding,
                        centerImage: const OnboardingAppPreview(
                          imagePath: OnboardingAssets.appPreview,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: OnboardingPageIndicator(
                    pageCount: 3,
                    currentPage: _currentPage,
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
