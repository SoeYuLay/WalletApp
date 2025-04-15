import 'package:flutter/material.dart';
import 'package:wallet_app/widget/chart_data.dart';
import 'package:wallet_app/widget/wallet_transaction.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {

  final List<String> dropdownMonths = ['Oct-Feb', 'Mar-Jul', 'Aug-Sep'];
  TextEditingController? selectedMonth;
  String? currentValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
                children: [
          DropdownMenu(
            controller: selectedMonth,
            initialSelection: dropdownMonths.first,
            inputDecorationTheme: InputDecorationTheme(
              border: InputBorder.none
            ),
            onSelected: (value) {
              setState(() {
                currentValue = value!;
              });
            },
            dropdownMenuEntries:
                dropdownMonths.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          ),
          ChartData(),
          SizedBox(height: 30),
          Center(
            child: Text('Total Balance',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),),
          ),
          Center(
            child: Text('\$ 13.248',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text('Transaction',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23
                ),),
              Spacer(),
              TextButton(
                  onPressed: (){},
                  child: Text('Latest',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 15
                    ),))
            ],
          ),
          Expanded(child: WalletTransaction())
                ],
              ),
        ));
  }
}
