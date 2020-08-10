import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CurrencyPicker extends StatelessWidget {
  Function selectItemFunction;
  CurrencyPicker(this.selectItemFunction);
  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
        itemExtent: 30,
        onSelectedItemChanged: (value) => selectItemFunction(value),
        children: currencies.map((e) => Text(e)).toList());
  }
}

class LengthPicker extends StatelessWidget {
  Function selectItemFunction;
  LengthPicker(this.selectItemFunction);
  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
        itemExtent: 30,
        onSelectedItemChanged: (value) => selectItemFunction(value),
        children: lengthUnits.map((e) => Text(e)).toList());
  }
}

class WeightPicker extends StatelessWidget {
  Function selectItemFunction;
  WeightPicker(this.selectItemFunction);
  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
        itemExtent: 30,
        onSelectedItemChanged: (value) => selectItemFunction(value),
        children: weightUnits.map((e) => Text(e)).toList());
  }
}
