import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/widget/profile_card.dart';
import 'package:wallet_app/widget/setting_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              Icon(
                Iconsax.arrow_circle_left,
                color: Colors.deepPurple,
                size: 35,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  maxRadius: 50,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Jaka',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(width: 10,),
                  Icon(Iconsax.edit_2,color: Colors.grey,)
                ],
              ),
              ProfileCard(),
              Center(child: ButtonText(Iconsax.trash, 'Delete Account'))
            ],
          ),
        ),
      ),
    );
  }
}
