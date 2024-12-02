import 'package:admin/dashboard/view/widgets/analytics_section.dart';
import 'package:admin/dashboard/view/widgets/appbar.dart';
import 'package:admin/dashboard/view/widgets/order_table.dart';
import 'package:admin/dashboard/view/widgets/side_nav.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Side Navigation
          const SideNavigation(),
          // Main Content
          Expanded(
            child: Column(
              children: [
                // App Bar
                const AppBarSection(),
                // Analytics Section
                const AnalyticsSection(),
                // Body with Table
                Expanded(child: OrderTable()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
