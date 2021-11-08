import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class TransactionWidget extends StatelessWidget {
  final String title;
  final double amount;
  final DateTime date;
  final String id;
  TransactionWidget(
      {@required this.title,
      @required this.date,
      @required this.amount,
      @required this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            child: Text(
              '\$${amount.toStringAsFixed(2)}',
              style: TextStyle(color: Colors.purple, fontSize: 15),
            ),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple, width: 2),
            ),
            padding: EdgeInsets.all(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(
                DateFormat.yMMMd().format(date),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
