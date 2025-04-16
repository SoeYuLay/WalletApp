import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/screen/home_screen.dart';

class DetailcardScreen extends StatelessWidget {
  Map<String, String> cardData = {
    'Name': 'Jaka mambang',
    'Bank': 'Mabank',
    'Accounts': '.... .... .... 2138',
    'Status': 'Active',
    'Valid': '2022-2025'
  };

  @override
  Widget build(BuildContext context) {
    List<MapEntry<String, String>> entries = cardData.entries.toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  Iconsax.arrow_circle_left,
                  color: Colors.deepPurple,
                  size: 35,
                ),
              ),
              Center(
                  child: Text('Detail card',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 30,
              ),
            Container(
                width: double.infinity,
                height: 250,
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/card1.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(70)))),
              SizedBox(height: 30,),
              ...entries.map(
                    (entry) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text(
                                entry.key,
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              entry.value,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: TextButton(
                    onPressed: (){},
                    child: Text('Delete Card',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
