import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/screen/chart_screen.dart';
import 'package:wallet_app/screen/notification_screen.dart';
import 'package:wallet_app/screen/setting_screen.dart';
import 'package:wallet_app/screen/wallet_screen.dart';
import 'package:wallet_app/widget/bottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    WalletScreen(),
    ChartScreen(),
    NotificationScreen(),
    SettingScreen()
  ];

  void _NavItemOnTap (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Bottomnavbar(_selectedIndex,_NavItemOnTap),
    );
  }
}
