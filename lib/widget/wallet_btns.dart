import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/screen/addCard_screen.dart';
import 'package:wallet_app/screen/transfer_screen.dart';

class WalletBtns extends StatelessWidget {
  const WalletBtns({super.key});

  Column buttons(IconData iconName, String btnName) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 2))
              ]),
          child: Icon(
            iconName,
            size: 30,
            color: Color(0xFF270d4f),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          btnName,
          style: TextStyle(
              fontSize: 16,
              color: Colors.deepPurple,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TransferScreen()));
            },
            child: buttons(Iconsax.arrow, 'Transfer')),
        buttons(Iconsax.money_change, 'Payment'),
        buttons(Iconsax.money_send, 'Pay Out'),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>AddcardScreen())
            );
          },
            child: buttons(Iconsax.add_circle, 'Top Up')),
      ],
    );
  }
}
