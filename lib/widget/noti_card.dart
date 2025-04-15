import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotiCard extends StatelessWidget {

  List<List<String>> cardData = [
    ['29 June 2021, 9.02 AM','You spent Rp 32.000 for Coffe Cetar back Tugu Sentral','\'Buy drink\''],
    ['29 June 2021, 7.14 PM','You received Rp 100.000 from Alexandr Gibson Jogja','\'Pay debt\''],
    ['28 June 2021, 8.32 PM','You spent Rp 210.000 for pay Tokosbla ijo mera','\'Buy items\''],
    ['28 June 2021, 8.32 PM','You spent Rp 210.000 for pay Tokosbla ijo mera','\'Buy items\''],
    ['28 June 2021, 8.32 PM','You spent Rp 210.000 for pay Tokosbla ijo mera','\'Buy items\''],
    ['28 June 2021, 8.32 PM','You spent Rp 210.000 for pay Tokosbla ijo mera','\'Buy items\''],
    ['28 June 2021, 8.32 PM','You spent Rp 210.000 for pay Tokosbla ijo mera','\'Buy items\''],
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 15),
          shrinkWrap: true,
          itemCount: cardData.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 1,
              child: ExpansionTile(
                  shape: RoundedRectangleBorder(side: BorderSide.none),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardData[index][0],
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Text(
                        cardData[index][1],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1C1C1E),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      cardData[index][2],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Iconsax.arrow_circle_down,color: Colors.red,),
              ),
            );
      }
      ),
    );
  }
}
