import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/inputs/app_text_field.dart';
import '../../domain/repositories/sales_repository.dart';

/// Add stock to warehouse or shop.
class AddStockPage extends StatefulWidget {
  const AddStockPage({required this.locationType, super.key});

  final String locationType;

  @override
  State<AddStockPage> createState() => _AddStockPageState();
}

class _AddStockPageState extends State<AddStockPage> {
  String? _selectedProductId;
  final _qtyController = TextEditingController(text: '1');
  bool _loading = false;

  @override
  void dispose() {
    _qtyController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_selectedProductId == null) return;
    setState(() => _loading = true);
    final qty = double.tryParse(_qtyController.text) ?? 1;
    final result = await getIt<SalesRepository>().addStock(
      productId: _selectedProductId!,
      locationType: widget.locationType,
      quantity: qty,
    );
    if (!mounted) return;
    setState(() => _loading = false);
    result.fold(
      (_) => AppSnackbar.error(context, 'Failed to add stock'),
      (_) {
        AppSnackbar.success(context, 'Stock added');
        context.pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final label =
        widget.locationType == 'shop' ? 'Shop' : 'Warehouse';

    return Scaffold(
      appBar: AppBar(title: Text('Add item to $label')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.base),
        children: [
          const Text('Select product', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: AppSpacing.sm),
          ...MockDataStore.stockItems
              .where((i) => i.$5 == widget.locationType)
              .map((item) => RadioListTile<String>(
                    title: Text(item.$2),
                    subtitle: Text(item.$4),
                    value: item.$1,
                    groupValue: _selectedProductId,
                    onChanged: (v) => setState(() => _selectedProductId = v),
                  )),
          const SizedBox(height: AppSpacing.base),
          AppTextField(
            controller: _qtyController,
            hint: 'Quantity',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: AppSpacing.lg),
          AppButton(
            label: 'Add Stock',
            isLoading: _loading,
            onPressed: _selectedProductId == null ? null : _submit,
          ),
        ],
      ),
    );
  }
}
