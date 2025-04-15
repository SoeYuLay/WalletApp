import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/widget/setting_card.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Text('Settings',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Expanded(child: SettingCard()),
                ButtonText(Iconsax.logout, 'Log Out')
              ],
            ),
          ),
        ));
  }
}
