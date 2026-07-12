import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/utils/state_status.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/inputs/app_text_field.dart';
import '../../domain/entities/sales_entities.dart';
import '../cubit/sale_cubit.dart';

/// New sale flow screen.
class SalePage extends StatefulWidget {
  const SalePage({super.key});

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  final _customerController = TextEditingController();

  @override
  void dispose() {
    _customerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SaleCubit>(),
      child: BlocConsumer<SaleCubit, SaleState>(
        listener: (context, state) {
          if (state.submitted) {
            AppSnackbar.success(context, 'Sale completed');
            context.pop();
          }
          if (state.errorMessage != null) {
            AppSnackbar.error(context, state.errorMessage!);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: const Text('New Sale')),
            body: ListView(
              padding: const EdgeInsets.all(AppSpacing.base),
              children: [
                AppTextField(
                  controller: _customerController,
                  hint: 'Customer name (optional)',
                  onChanged: (v) =>
                      context.read<SaleCubit>().setCustomer(v),
                ),
                const SizedBox(height: AppSpacing.base),
                const Text('Add products', style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: AppSpacing.sm),
                ...MockDataStore.stockItems.take(3).map((item) {
                  return ListTile(
                    title: Text(item.$2),
                    subtitle: Text(Formatters.currency(item.$6)),
                    trailing: IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      onPressed: () => context.read<SaleCubit>().addLine(
                            SaleLineItem(
                              productId: item.$1,
                              name: item.$2,
                              price: item.$6,
                              quantity: 1,
                            ),
                          ),
                    ),
                  );
                }),
                const Divider(),
                ...state.lines.map((line) => ListTile(
                      title: Text(line.name),
                      subtitle: Text(
                        '${line.quantity.toStringAsFixed(0)} x ${Formatters.currency(line.price)}',
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(Formatters.currency(line.lineTotal)),
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            onPressed: () => context
                                .read<SaleCubit>()
                                .removeLine(line.productId),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  'Total: ${Formatters.currency(state.total)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.base),
                AppButton(
                  label: 'Complete Sale',
                  isLoading: state.status == StateStatus.loading,
                  onPressed: state.lines.isEmpty
                      ? null
                      : () => context.read<SaleCubit>().submit(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
