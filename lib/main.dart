//import 'package:app1/todoapp/provider/home.dart';
//import 'package:app1/currencyConvert/mainScreen.dart';
import 'package:app1/currencyConvert/mainScreen.dart';
import 'package:app1/login_database_todo/provider/dp_provider.dart';
import 'package:app1/login_database_todo/ui/screen/screens/main_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
    return ChangeNotifierProvider<DBProvider>(
        create: (BuildContext context) {
          return DBProvider();
        },
        child: MaterialApp(
          title: 'Units Converter',
          home: MyHome(),
        ));
  }
}

/*class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}*/
