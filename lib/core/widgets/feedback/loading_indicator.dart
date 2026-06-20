import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_radius.dart';
import '../../theme/app_spacing.dart';

/// Full-screen loading spinner and list skeleton placeholders.
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key}) : _isList = false;

  /// Skeleton rows for list loading states.
  const LoadingIndicator.list({super.key}) : _isList = true;

  final bool _isList;

  @override
  Widget build(BuildContext context) {
    if (_isList) {
      return ListView.separated(
        padding: const EdgeInsets.all(AppSpacing.base),
        itemCount: 4,
        separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
        itemBuilder: (_, __) => const _SkeletonRow(),
      );
    }

    return const Center(
      child: CircularProgressIndicator(color: AppColors.primary),
    );
  }
}

class _SkeletonRow extends StatelessWidget {
  const _SkeletonRow();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: AppColors.neutral100,
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
    );
  }
}
