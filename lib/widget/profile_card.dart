import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileCard extends StatelessWidget {
  List<String> settingList = [
    'Connected Account',
    'Privacy and security',
    'Login Settings',
    'Service Center'
    ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 20),
          shrinkWrap: true,
          itemCount: settingList.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Card(
                color: Colors.white,
                elevation: 0,
                child: ExpansionTile(
                    shape: RoundedRectangleBorder(side: BorderSide.none),
                    title: Text(settingList[index],style: TextStyle(fontSize: 20)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 18,)
                ),
              ),
            );
          }),
    );
  }
}
