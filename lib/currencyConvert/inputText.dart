import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  Function onChangeTextField;
  InputText(this.onChangeTextField);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      onChanged: (value) => onChangeTextField(value),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
