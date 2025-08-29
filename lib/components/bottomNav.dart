import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(int) onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        iconSize: 24,
        tabBackgroundColor: const Color(0xFF633D1F),
        color: Colors.black,
        activeColor: Colors.white,
        tabBorderRadius: 25,
        onTabChange: widget.onTabChange, // this now works ✅
        tabs: const [
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.shopping_bag, text: "Cart"),
        ],
      ),
    );
  }
}
