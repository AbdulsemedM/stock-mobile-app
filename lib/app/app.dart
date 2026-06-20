import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di/injection.dart';
import '../core/network/interceptors/error_interceptor.dart';
import '../core/theme/app_theme.dart';
import '../core/widgets/feedback/app_snackbar.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';
import '../features/auth/presentation/bloc/auth_event.dart';
import '../features/auth/presentation/bloc/auth_state.dart';
import 'router/app_router.dart';
import 'router/route_paths.dart';

/// Set when a 401 triggers session expiry handling.
bool sessionExpiredPending = false;

/// Configures global unauthorized callback before the app runs.
void configureUnauthorizedHandler() {
  onUnauthorized = () {
    sessionExpiredPending = true;
    getIt<AuthBloc>().add(const AuthEvent.sessionExpired());
  };
}

/// Root application widget.
class StockFlowApp extends StatefulWidget {
  const StockFlowApp({super.key});

  @override
  State<StockFlowApp> createState() => _StockFlowAppState();
}

class _StockFlowAppState extends State<StockFlowApp> {
  late final AuthBloc _authBloc = getIt<AuthBloc>()
    ..add(const AuthEvent.checkStatus());

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) =>
            previous.isAuthenticated != current.isAuthenticated ||
            sessionExpiredPending,
        listener: (context, state) {
          if (sessionExpiredPending && !state.isAuthenticated) {
            sessionExpiredPending = false;
            AppSnackbar.info(
              context,
              'Session expired, please log in again',
            );
            appRouter.go(RoutePaths.login);
          }
        },
        child: MaterialApp.router(
          title: 'StockFlow',
          theme: AppTheme.light,
          scaffoldMessengerKey: scaffoldMessengerKey,
          routerConfig: appRouter,
        ),
      ),
    );
  }
}

/// Global scaffold messenger key for snackbars outside widget tree.
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
