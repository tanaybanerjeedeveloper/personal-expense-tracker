import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final double amount;
  final double spendingPercentOfTotalWeekTransaction;
  final String weekDayInitial;

  ChartBar(
      {@required this.amount,
      @required this.spendingPercentOfTotalWeekTransaction,
      @required this.weekDayInitial});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('\$${amount.toStringAsFixed(0)}'),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPercentOfTotalWeekTransaction,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   height: 40,
        //   width: 10,
        //   child: Stack(
        //     children: [
        //       Container(
        //           height: 40,
        //           width: 10,
        //           decoration: BoxDecoration(color: Colors.grey)),
        //       FractionallySizedBox(
        //         // alignment: FractionalOffset.bottomCenter,
        //         heightFactor: spendingPercentOfTotalWeekTransaction,
        //         widthFactor: 1,
        //         child: Container(
        //           decoration: BoxDecoration(color: Colors.indigo),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        SizedBox(
          height: 4,
        ),
        Text(weekDayInitial)
      ],
    );
  }
}
