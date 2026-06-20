/// Simulates network latency for mock responses.
Future<void> mockDelay() =>
    Future<void>.delayed(const Duration(milliseconds: 350));
