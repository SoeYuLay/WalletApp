import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TransferCard extends StatelessWidget {
  TransferCard(this.number, {super.key});
  String? number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
        child: InkWell(
          child: Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(side: BorderSide.none),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                number!,
                style: TextStyle(fontSize: 24, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }
}

class TransferCardIcon extends StatelessWidget {
  // TransferCardIcon(this.iconData);
  // IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: InkWell(
          child: Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(side: BorderSide.none),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Iconsax.close_circle,)
            ),
          ),
        ));
  }
}
