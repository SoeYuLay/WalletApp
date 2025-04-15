import 'package:flutter/material.dart';
import 'package:wallet_app/screen/addCard_screen.dart';
import 'package:wallet_app/screen/detailCard_screen.dart';
import 'package:wallet_app/screen/profile_screen.dart';
import 'package:wallet_app/screen/transfer_screen.dart';
import 'package:wallet_app/screen/wallet_screen.dart';
import 'package:wallet_app/screen/signin_screen.dart';
import 'package:wallet_app/screen/signup_screen.dart';
import 'package:wallet_app/screen/home_screen.dart';
import 'package:wallet_app/widget/noti_card.dart';
import 'package:wallet_app/widget/wallet_transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen()
    );
  }
}
