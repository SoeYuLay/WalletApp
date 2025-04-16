import 'package:flutter/material.dart';
import 'package:wallet_app/screen/detailCard_screen.dart';
import 'package:wallet_app/widget/wallet_btns.dart';
import 'package:wallet_app/widget/wallet_card.dart';
import 'package:wallet_app/widget/wallet_transaction.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wallet',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Active',
                        style: TextStyle(fontSize: 15,color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    maxRadius: 30,
                  )
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>DetailcardScreen())
                  );
                },
                  child: WalletCard()),
              SizedBox(height: 20),
              WalletBtns(),
              SizedBox(height: 40),
              Row(
                children: [
                  Text('Last Transaction',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23
                  ),),
                  Spacer(),
                  TextButton(
                      onPressed: (){},
                      child: Text('View All',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 15
                      ),))
                ],
              ),
              Expanded(child: WalletTransaction())
            ],
          ),
        ),
      );

  }
}
