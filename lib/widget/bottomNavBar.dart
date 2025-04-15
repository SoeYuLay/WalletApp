import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Bottomnavbar extends StatelessWidget {
  Bottomnavbar (this.currentIndex,this.onTapped);

  int currentIndex;
  Function(int) onTapped;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF270d4f),
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BottomNavigationBar(
                currentIndex: currentIndex,
                backgroundColor: Colors.transparent,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white60,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                iconSize: 30,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.wallet_2), label: 'wallet'),
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.chart_2), label: 'chart'),
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.notification_bing), label: 'notification'),
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.setting), label: 'settings')
                ],
                onTap: onTapped,
              ),
          ),
        ));
  }
}
