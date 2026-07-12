import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/sales/sales_bottom_nav.dart';

/// Bottom navigation shell for salesperson role (5 tabs).
class SalespersonShell extends StatelessWidget {
  const SalespersonShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  void _onTabSelected(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: SalesBottomNav(
        currentIndex: navigationShell.currentIndex,
        onTap: _onTabSelected,
      ),
    );
  }
}
