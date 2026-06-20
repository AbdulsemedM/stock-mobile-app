import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Whether the app uses local mock data instead of the REST API.
class MockConfig {
  MockConfig._();

  /// Defaults to true until a real backend is connected.
  static bool get enabled {
    final value = dotenv.env['USE_MOCK_DATA'];
    if (value == null || value.isEmpty) return true;
    return value.toLowerCase() == 'true';
  }
}
