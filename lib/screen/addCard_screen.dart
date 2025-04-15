import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddcardScreen extends StatelessWidget {
  const AddcardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Iconsax.arrow_circle_left,color: Colors.deepPurple,size: 35,),
                Center(child: Text('Add card',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                      width: 280,
                      height: 400,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/card2.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(70)))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 30, 60, 0),
                  child: Center(child: Text('Add a new card on your wallet for easy life',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20
                  ),)),
                )
              ],
            ),
          )),
    );
  }
}
