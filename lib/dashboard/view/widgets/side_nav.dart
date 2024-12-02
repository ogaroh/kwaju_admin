import 'package:admin/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class SideNavigation extends StatelessWidget {
  const SideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 40,
            fit: BoxFit.contain,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 8,
            ),
            child: Text(
              'SHOP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // const SizedBox(height: 32),
          const NavItem(icon: Icons.dashboard, label: 'Dashboard'),
          const NavItem(icon: Icons.payment, label: 'Payments'),
          const NavItem(
            icon: Icons.shopping_cart,
            label: 'Orders',
            isActive: true,
          ),
          const NavItem(icon: Icons.inventory, label: 'Products'),
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 8,
            ),
            child: Text(
              'MEMBER MANAGEMENT',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const NavItem(
            icon: Icons.check_circle_outline,
            label: 'Member Management',
          ),
          const NavItem(icon: Icons.group_add, label: 'Customer Subscriptions'),

          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 8,
            ),
            child: Text(
              'ADMIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const NavItem(
            icon: Icons.point_of_sale_outlined,
            label: 'Content Management',
          ),
          const NavItem(
            icon: Icons.verified_user_outlined,
            label: 'Users/Security',
          ),
          const NavItem(
            icon: Icons.settings_outlined,
            label: 'Settings',
          ),
          const NavItem(
            icon: Icons.notifications_outlined,
            label: 'Notifications',
          ),
          const NavItem(
            icon: Icons.help_outline,
            label: 'Customer Support',
          ),
          const NavItem(
            icon: Icons.phone_outlined,
            label: 'Communication',
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    required this.icon,
    required this.label,
    super.key,
    this.isActive = false,
  });
  final IconData icon;
  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: isActive
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: kSecondaryColor,
            )
          : null,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: isActive ? Colors.white : Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                icon,
                color: isActive ? Colors.black : Colors.grey,
                size: 16,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black87,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
