import 'package:flutter/material.dart';

import '../../../../core/mock/mock_data_store.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/widgets/layout/app_card.dart';

/// Credit detail screen.
class CreditDetailPage extends StatelessWidget {
  const CreditDetailPage({required this.creditId, super.key});

  final String creditId;

  @override
  Widget build(BuildContext context) {
    final entry = MockDataStore.creditEntries
        .where((e) => e.$1 == creditId)
        .firstOrNull;

    if (entry == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Credit Detail')),
        body: const Center(child: Text('Credit not found')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Credit Detail')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.base),
        children: [
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entry.$2,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text('Amount: ${Formatters.currency(entry.$3)}'),
                Text('Items: ${entry.$4}'),
                Text('Status: ${entry.$5}'),
                Text('Date: ${entry.$6}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
