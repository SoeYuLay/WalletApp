import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingCard extends StatelessWidget {
  List<List<dynamic>> settingList = [
    ['Profile',Iconsax.user_square],
    ['Notifications',Iconsax.notification],
    ['Your Wallet',Iconsax.wallet_2],
    ['Login Settings',Iconsax.key_square],
    ['Service Center',Iconsax.call_calling]];

  Container iconContainer(int index){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 2)
          )
        ],
      ),
      child: Icon(settingList[index][1],),
    );
  }

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
                  leading: iconContainer(index),
                  title: Text(settingList[index][0],style: TextStyle(fontSize: 20)),
                  trailing: Icon(Icons.arrow_forward_ios)
                ),
              ),
            );
          }),
    );
  }
}

class ButtonText extends StatelessWidget {
  ButtonText(this.iconData,this.textData);

  IconData? iconData;
  String? textData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: CircleBorder()
            ),
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(iconData,size: 40,),
            )),
        SizedBox(height: 15,),
        Text('$textData',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple
          ),)
      ],
    );
  }
}
