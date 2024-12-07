import 'package:flutter/material.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/string_constants.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<_NavItem> _bottomNavItems = [
    _NavItem(icon: homeIcon, label: 'Home'),
    _NavItem(icon: treeIcon, label: 'Projects'),
    _NavItem(icon: walletIcon, label: 'Wallet'),
    _NavItem(icon: targetIcon, label: 'Target'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height * 0.12,
      width: ScreenSize.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.lightGreen.withOpacity(0.7), // Stronger green shadow
            blurRadius: 30, // Increased blur for a softer look
            spreadRadius: 10, // Larger spread for more coverage
            offset: const Offset(0, 10), // Shadow moves further down
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < _bottomNavItems.length; i++)
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              IconButton(
                icon: SizedBox(
                    width: ScreenSize.width * 0.07,
                    child: Image.asset(_bottomNavItems[i].icon)),
                onPressed: () {
                  setState(() {
                    _selectedIndex = i;
                  });
                },
              ),
              Text(
                _bottomNavItems[i].label,
                style: TextStyle(fontSize: ScreenSize.height * 0.012),
              ),
            ])
        ],
      ),
    );
  }
}

class _NavItem {
  final String icon;
  final String label;

  _NavItem({required this.icon, required this.label});
}
