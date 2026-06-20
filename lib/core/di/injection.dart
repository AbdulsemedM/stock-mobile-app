import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

/// Configures dependency injection via get_it and injectable.
@InjectableInit()
Future<void> configureDependencies() async {
  await getIt.init();
}
