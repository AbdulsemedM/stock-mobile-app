import 'package:flutter/material.dart';

import '../../../../core/utils/formatters.dart';
import '../../data/models/dashboard_models.dart';

/// Tile for a recent activity feed item.
class RecentActivityTile extends StatelessWidget {
  const RecentActivityTile({required this.activity, super.key});

  final RecentActivity activity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(activity.title, style: Theme.of(context).textTheme.bodyLarge),
      subtitle: Text(activity.description),
      trailing: Text(
        Formatters.relative(activity.timestamp),
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
