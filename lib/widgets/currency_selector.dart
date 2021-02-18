import 'package:flutter/material.dart';

class CurrencySelector extends StatelessWidget {
  final defaultCurrency;
  final Function _updateCurrency;
  CurrencySelector(this.defaultCurrency, this._updateCurrency);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        dropdownColor: Colors.purple,
        value: defaultCurrency,
        style: TextStyle(
          color: Theme.of(context).textTheme.button.color,
        ),
        underline: Container(
          alignment: Alignment.bottomRight,
          color: Theme.of(context).primaryColor,
        ),
        items: <String>['INR', 'USD']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (newValue) {
          _updateCurrency(newValue);
        });
  }
}
