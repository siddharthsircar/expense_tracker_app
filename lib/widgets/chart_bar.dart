import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spending;
  final double spendingPercentageTotal;
  final String currencyIcon;

  ChartBar(this.label, this.spending, this.spendingPercentageTotal,
      this.currencyIcon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Container(
        //   height: 20,
        //   child: FittedBox(
        //     child: Text('$currencyIcon${spending.toStringAsFixed(0)}'),
        //   ),
        // ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(10)),
              ),
              FractionallySizedBox(
                alignment: Alignment.bottomCenter,
                heightFactor: spendingPercentageTotal,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
        Text(label)
      ],
    );
  }
}
