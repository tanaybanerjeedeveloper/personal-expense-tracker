import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import './transaction_widget.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return TransactionWidget(
            title: transactions[index].title,
            id: transactions[index].id,
            amount: transactions[index].amount,
            date: transactions[index].date,
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
