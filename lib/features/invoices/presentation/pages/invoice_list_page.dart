import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../../app/router/route_paths.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/empty_state_view.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/status_badge.dart';
import '../bloc/invoice_bloc.dart';
import '../bloc/invoice_event.dart';
import '../bloc/invoice_state.dart';

/// Invoice list screen.
class InvoiceListPage extends StatelessWidget {
  const InvoiceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<InvoiceBloc>()..add(const InvoiceEvent.loadList()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Invoices')),
        body: BlocConsumer<InvoiceBloc, InvoiceState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(
                context,
                state.errorMessage!,
                onRetry: () => context
                    .read<InvoiceBloc>()
                    .add(const InvoiceEvent.loadList()),
              );
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading &&
                state.invoices.isEmpty) {
              return const LoadingIndicator.list();
            }
            if (state.status == StateStatus.failure &&
                state.invoices.isEmpty) {
              return ErrorStateView(
                title: 'Failed to load invoices',
                description: state.errorMessage ?? '',
                onRetry: () => context
                    .read<InvoiceBloc>()
                    .add(const InvoiceEvent.loadList()),
              );
            }
            if (state.invoices.isEmpty) {
              return const EmptyStateView(
                icon: LucideIcons.receipt,
                title: 'No invoices',
                description: 'Invoices will appear here.',
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.all(AppSpacing.base),
              itemCount: state.invoices.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final invoice = state.invoices[index];
                return ListTile(
                  title: Text(invoice.invoiceNumber),
                  subtitle: Text(
                    '${invoice.customerName} · ${Formatters.currency(invoice.totalAmount)}',
                  ),
                  trailing: StatusBadge(status: invoice.status),
                  onTap: () =>
                      context.push(RoutePaths.invoiceDetailPath(invoice.id)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
