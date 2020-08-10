import 'package:flutter/material.dart';

import 'picker.dart';
import 'inputText.dart';

class FirstHalf extends StatelessWidget {
  Function firstCurrencyFunction;
  Function secondCurrencyFunction;
  Function textFieldFunction;
  FirstHalf(
      {this.firstCurrencyFunction,
      this.secondCurrencyFunction,
      this.textFieldFunction});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: CurrencyPicker(firstCurrencyFunction)),
          Expanded(child: InputText(textFieldFunction)),
          Expanded(child: CurrencyPicker(secondCurrencyFunction)),
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red[700], Colors.red[100]], stops: [0, 0.5])),
    );
  }
}

class FirstHalfLength extends StatelessWidget {
  Function firstLenghtFunction;
  Function secondLenghtFunction;
  Function textFieldFunctionLenght;
  FirstHalfLength(
      {this.firstLenghtFunction,
      this.secondLenghtFunction,
      this.textFieldFunctionLenght});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: LengthPicker(firstLenghtFunction)),
          Expanded(child: InputText(textFieldFunctionLenght)),
          Expanded(child: LengthPicker(secondLenghtFunction)),
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red[700], Colors.red[100]], stops: [0, 0.5])),
    );
  }
}

class FirstHalfWeight extends StatelessWidget {
  Function firstWeightFunction;
  Function secondWeightFunction;
  Function textFieldFunctionWeight;
  FirstHalfWeight(
      {this.firstWeightFunction,
      this.secondWeightFunction,
      this.textFieldFunctionWeight});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: LengthPicker(firstWeightFunction)),
          Expanded(child: InputText(textFieldFunctionWeight)),
          Expanded(child: LengthPicker(secondWeightFunction)),
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red[700], Colors.red[100]], stops: [0, 0.5])),
    );
  }
}
