import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import './transaction_widget.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: (transactions.isEmpty)
          ? Center(
              child: Column(
                children: [
                  Text('No transactions yet'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return TransactionWidget(
                  title: transactions[index].title,
                  id: transactions[index].id,
                  amount: transactions[index].amount,
                  date: transactions[index].date,
                  deleteTx: deleteTx,
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
