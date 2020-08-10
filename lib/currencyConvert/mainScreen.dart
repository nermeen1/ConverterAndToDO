import 'package:flutter/material.dart';

import 'currency_converter_screen.dart';

class MyHome extends StatelessWidget {
  List<String> units = ['Currancy', 'length', 'weight', 'temperature'];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AppConverter'),
        ),
        body: GridView.builder(
            itemCount: units.length,
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.all(1.0),
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return new GestureDetector(
                  onTap: () {
                    if (index == 0)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CurrencyConverterScreen()),
                      );
                    if (index == 1)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LenghtConverterScreen()),
                      );
                    if (index == 2)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeightConverterScreen()),
                      );
                  },
                  child: Card(
                    child: new Container(
                      child: Column(children: <Widget>[
                        Text(
                          units[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      ]),
                      width: 80.0,
                      height: 80.0,
                      margin: new EdgeInsets.all(5.0),
                      padding: new EdgeInsets.all(25.0),
                      color: Colors.blue,
                    ),
                  ));
            }));
  }
}
