import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../cubit/notifications_cubit.dart';
import '../cubit/notifications_state.dart';

/// Notifications list screen.
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NotificationsCubit>()..load(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Notifications')),
        body: BlocConsumer<NotificationsCubit, NotificationsState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context.read<NotificationsCubit>().load(),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.notifications.isEmpty) {
              return const LoadingIndicator.list();
            }
            if (state.status == StateStatus.failure &&
                state.notifications.isEmpty) {
              return ErrorStateView(
                title: 'Failed to load notifications',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<NotificationsCubit>().load(),
              );
            }
            if (state.notifications.isEmpty) {
              return const EmptyStateView(
                icon: LucideIcons.bell,
                title: 'No notifications',
                description: 'You are all caught up.',
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.all(AppSpacing.base),
              itemCount: state.notifications.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final notification = state.notifications[index];
                return ListTile(
                  leading: Icon(
                    notification.isRead
                        ? LucideIcons.bell
                        : LucideIcons.bellRing,
                    color: notification.isRead
                        ? Theme.of(context).colorScheme.outline
                        : Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(notification.title),
                  subtitle: Text(notification.body),
                  trailing: Text(
                    Formatters.relative(notification.createdAt),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
