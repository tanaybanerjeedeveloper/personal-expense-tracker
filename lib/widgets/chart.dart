import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Transaction.dart';
import './chart_bar.dart';

class Chart extends StatelessWidget {
  final List<Transaction> allTxForPastSevenDays;

  Chart(this.allTxForPastSevenDays);

  List<Map<String, Object>> get listOfDetialsForBars {
    return List.generate(7, (index) {
      final date = DateTime.now().subtract(Duration(days: index));
      var totalSumOfTransactionsForTheDate = 0.0;
      for (var i = 0; i < allTxForPastSevenDays.length; i++) {
        if (allTxForPastSevenDays[i].date.day == date.day &&
            allTxForPastSevenDays[i].date.month == date.month &&
            allTxForPastSevenDays[i].date.year == date.year) {
          totalSumOfTransactionsForTheDate += allTxForPastSevenDays[i].amount;
        }
      }
      return {
        'day': DateFormat.E().format(date).substring(0, 1),
        'amount': totalSumOfTransactionsForTheDate
      };
    }).reversed.toList();
  }

  double get totalTxForTheWeek {
    return listOfDetialsForBars.fold(
        0.0, (prevValue, item) => prevValue + item['amount']);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: listOfDetialsForBars
              .map(
                (item) => ChartBar(
                  amount: item['amount'],
                  spendingPercentOfTotalWeekTransaction:
                      totalTxForTheWeek == 0.0
                          ? 0.0
                          : (item['amount'] as double) / totalTxForTheWeek,
                  weekDayInitial: item['day'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
