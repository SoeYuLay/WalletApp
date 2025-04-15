import 'package:flutter/material.dart';

class WalletTransaction extends StatelessWidget {
  List<List<String>> listData = [
    ['Netflix','Month subscription','\$12','assets/images/netflix.jpg'],
    ['Paypal','Tax','\$10','assets/images/paypal.png'],
    ['Paylater','Buy item','\$2','assets/images/paypal.png']
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 15),
          itemCount: listData.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 0,
              child: ExpansionTile(
                shape: RoundedRectangleBorder(side: BorderSide.none),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(listData[index][3]),
                  maxRadius: 25,
                ),
                title: Text(listData[index][0],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                subtitle: Text(listData[index][1],style: TextStyle(color: Colors.grey)),
                trailing: Text(listData[index][2],style: TextStyle(fontSize: 18)),
              ),
            );
          }),
    );
  }
}

