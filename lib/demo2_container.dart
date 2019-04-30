import 'package:flutter/material.dart';

void main() => runApp(Demo1App());

class Demo1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demoContainer",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("demoContainer")),
        body: Container(
          alignment: Alignment.topLeft,
          color: Colors.grey,
          height: 300,
          width: 200,
          child: Text(
            "定位栏",
          ),
        ),
      ),
    );
  }
}
