import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class TransactionWidget extends StatelessWidget {
  final String title;
  final double amount;
  final DateTime date;
  final String id;
  final Function deleteTx;
  TransactionWidget(
      {@required this.title,
      @required this.date,
      @required this.amount,
      @required this.id,
      @required this.deleteTx});

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   child: Row(
    //     children: [
    //       Container(
    //         child: Text(
    //           '\$${amount.toStringAsFixed(2)}',
    //           style: TextStyle(color: Colors.purple, fontSize: 15),
    //         ),
    //         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
    //         decoration: BoxDecoration(
    //           border:
    //               Border.all(color: Theme.of(context).primaryColor, width: 2),
    //         ),
    //         padding: EdgeInsets.all(10),
    //       ),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             '$title',
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
    //           ),
    //           Text(
    //             DateFormat.yMMMd().format(date),
    //             style: TextStyle(color: Colors.grey),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         width: 85,
    //       ),
    //       IconButton(icon: Icon(Icons.delete), onPressed: () {})
    //     ],
    //   ),
    // );
    return Card(
      child: ListTile(
        leading: Container(
          child: Text(
            '\$${amount.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.purple, fontSize: 15),
          ),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
          ),
          padding: EdgeInsets.all(7),
        ),
        title: Text(
          '$title',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(date),
          style: TextStyle(color: Colors.grey),
        ),
        trailing: IconButton(
            icon: Icon(
              Icons.delete,
              color: Theme.of(context).errorColor,
            ),
            onPressed: () => deleteTx(id)),
      ),
    );
  }
}
