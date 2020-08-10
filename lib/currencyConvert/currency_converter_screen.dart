import 'package:flutter/material.dart';

import 'constants.dart';
import 'firstHalf.dart';
import 'secondHalf.dart';

class CurrencyConverterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CurrencyConverterScreenState();
  }
}

class CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  String fromCurrency = 'USD';
  String toCurrency = 'USD';
  double textValue = 1.0;
  String result = '0';
  setFromCurrency(int value) {
    this.fromCurrency = currencies[value];
    calculateProcess();
    print(fromCurrency);
  }

  setToCurrency(int value) {
    this.toCurrency = currencies[value];
    calculateProcess();
  }

  setTextValue(String value) {
    this.textValue = double.parse(value);
    calculateProcess();
  }

  calculateProcess() {
    double res = currenciesVlauesMap[fromCurrency] /
        currenciesVlauesMap[toCurrency] *
        textValue;
    result = res.toString();
    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Currency Converter')),
      body: Column(
        children: <Widget>[
          Expanded(
              child: FirstHalf(
            firstCurrencyFunction: setFromCurrency,
            secondCurrencyFunction: setToCurrency,
            textFieldFunction: setTextValue,
          )),
          Expanded(
              child: SecondHalf(
            result: result,
          ))
        ],
      ),
    );
  }
}
///////////////////////////////////

class LenghtConverterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LengthConverterScreenState();
  }
}

class LengthConverterScreenState extends State<LenghtConverterScreen> {
  String fromlength = 'meter';
  String tolength = 'meter';
  double textValue = 1.0;
  String result = '0';
  setFromLength(int value) {
    this.fromlength = lengthUnits[value];
    calculateProcess();
    print(fromlength);
  }

  setToLength(int value) {
    this.tolength = lengthUnits[value];
    calculateProcess();
  }

  setTextValue(String value) {
    this.textValue = double.parse(value);
    calculateProcess();
  }

  calculateProcess() {
    double res =
        lengthVlauesMap[fromlength] / lengthVlauesMap[tolength] * textValue;
    result = res.toString();
    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('length Converter')),
      body: Column(
        children: <Widget>[
          Expanded(
              child: FirstHalfLength(
            firstLenghtFunction: setFromLength,
            secondLenghtFunction: setToLength,
            textFieldFunctionLenght: setTextValue,
          )),
          Expanded(
              child: SecondHalflength(
            result: result,
          ))
        ],
      ),
    );
  }
}
/////////////////////////////////////////////////
//////////////////////////////////////

class WeightConverterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WeightConverterScreenState();
  }
}

class WeightConverterScreenState extends State<WeightConverterScreen> {
  String fromWeight = 'gram';
  String toWeight = 'gram';
  double textValue = 1.0;
  String result = '0';
  setfromWeight(int value) {
    this.fromWeight = weightUnits[value];
    calculateProcess();
    print(fromWeight);
  }

  setToWeight(int value) {
    this.toWeight = weightUnits[value];
    calculateProcess();
  }

  setTextValue(String value) {
    this.textValue = double.parse(value);
    calculateProcess();
  }

  calculateProcess() {
    double res =
        weightVlauesMap[fromWeight] / weightVlauesMap[toWeight] * textValue;
    result = res.toString();
    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Weight Converter')),
      body: Column(
        children: <Widget>[
          Expanded(
              child: FirstHalfWeight(
            firstWeightFunction: setfromWeight,
            secondWeightFunction: setToWeight,
            textFieldFunctionWeight: setTextValue,
          )),
          Expanded(
              child: SecondHalfWeight(
            result: result,
          ))
        ],
      ),
    );
  }
}
/////////////////////////////////////////////////
