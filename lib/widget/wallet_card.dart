import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 180,
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/card.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(70))),
        // decoration: BoxDecoration(
        //   color: Colors.deepPurple,
        //   borderRadius: BorderRadius.all(Radius.circular(70)),
        // ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  '\$ 1.234',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Card',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'Mabank',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
