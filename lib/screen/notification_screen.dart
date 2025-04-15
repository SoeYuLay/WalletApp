import 'package:flutter/material.dart';
import 'package:wallet_app/screen/home_screen.dart';
import 'package:wallet_app/widget/noti_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Notification',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Expanded(child: NotiCard())
            ],
          ),
        ),
      ),
    );
  }
}
