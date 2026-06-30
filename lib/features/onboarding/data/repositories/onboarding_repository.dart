import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../prefs/onboarding_prefs.dart';

/// Persists whether the user has completed first-launch onboarding.
@lazySingleton
class OnboardingRepository {
  OnboardingRepository(this._prefs);

  final SharedPreferences _prefs;

  bool get isCompleted => _prefs.getBool(onboardingCompletedKey) ?? false;

  Future<void> markCompleted() async {
    await _prefs.setBool(onboardingCompletedKey, true);
  }
}
