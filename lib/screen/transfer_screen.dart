import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/screen/home_screen.dart';
import 'package:wallet_app/widget/transfer_card.dart';

class TransferScreen extends StatefulWidget {
  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final List<String> dropdownBank = ['MaBank', 'ABank', 'AYABank'];

  TextEditingController? selectedBank;

  String? currentValue;

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
              child: Text(
                '\$1200',
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300], // Change this to your preferred grey
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownMenu(
                    controller: selectedBank,
                    initialSelection: dropdownBank.first,
                    width: double.infinity,
                    inputDecorationTheme: InputDecorationTheme(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      ),
                      fillColor: Colors.transparent,
                    ),
                    onSelected: (value) {
                      setState(() {
                        currentValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        dropdownBank.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(value: value, label: value);
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                TransferCard('1'),
                TransferCard('2'),
                TransferCard('3'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                TransferCard('4'),
                TransferCard('5'),
                TransferCard('6'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                TransferCard('7'),
                TransferCard('8'),
                TransferCard('9'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                TransferCard('00'),
                TransferCard('0'),
                TransferCardIcon()
              ],
            ),
            SizedBox(height: 30,),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(60, 60),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: 130,
                    child: Center(
                      child: Text(
                        'Transfer',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
