// import 'package:flutter/material.dart';
// import '../models/Transaction.dart';
// import './transaction_list.dart';
// import './transaction_form.dart';

// class UserTransaction extends StatefulWidget {
//   @override
//   _UserTransactionState createState() => _UserTransactionState();
// }

// class _UserTransactionState extends State<UserTransaction> {
//   List<Transaction> _transactions = [
//     Transaction(
//         id: 't1', title: 'New Shoes', amount: 21.0, date: DateTime.now()),
//     Transaction(
//         id: 't2', title: 'Groceries', amount: 45.0, date: DateTime.now()),
//   ];
//   void _addNewTransaction(String title, double amount) {
//     final newTx = Transaction(
//       amount: amount,
//       title: title,
//       id: DateTime.now().toString(),
//       date: DateTime.now(),
//     );
//     setState(() {
//       _transactions.add(newTx);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TransactionForm(_addNewTransaction),
//         TransactionList(_transactions),
//       ],
//     );
//   }
// }
