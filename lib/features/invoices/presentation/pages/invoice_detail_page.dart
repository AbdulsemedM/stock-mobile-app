import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/error_state_view.dart';
import '../../../../core/widgets/feedback/loading_indicator.dart';
import '../../../../core/widgets/layout/app_card.dart';
import '../../../../core/widgets/layout/status_badge.dart';
import '../bloc/invoice_bloc.dart';
import '../bloc/invoice_event.dart';
import '../bloc/invoice_state.dart';

/// Invoice detail screen.
class InvoiceDetailPage extends StatelessWidget {
  const InvoiceDetailPage({required this.invoiceId, super.key});

  final String invoiceId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<InvoiceBloc>()..add(InvoiceEvent.loadDetail(invoiceId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Invoice')),
        body: BlocConsumer<InvoiceBloc, InvoiceState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              AppSnackbar.error(context, state.errorMessage!);
            }
          },
          builder: (context, state) {
            if (state.status == StateStatus.loading) {
              return const LoadingIndicator();
            }
            if (state.status == StateStatus.failure) {
              return ErrorStateView(
                title: 'Failed to load invoice',
                description: state.errorMessage ?? '',
                onRetry: () => context.read<InvoiceBloc>().add(
                      InvoiceEvent.loadDetail(invoiceId),
                    ),
              );
            }
            final invoice = state.selectedInvoice;
            if (invoice == null) return const SizedBox.shrink();
            return Padding(
              padding: const EdgeInsets.all(AppSpacing.base),
              child: AppCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            invoice.invoiceNumber,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        StatusBadge(status: invoice.status),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text('Customer: ${invoice.customerName}'),
                    Text('Total: ${Formatters.currency(invoice.totalAmount)}'),
                    Text('Created: ${Formatters.date(invoice.createdAt)}'),
                    if (invoice.dueDate != null)
                      Text('Due: ${Formatters.date(invoice.dueDate!)}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
