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
//          padding: EdgeInsets.all(12),
          padding: EdgeInsets.fromLTRB(12, 24, 0, 0),
//          margin: EdgeInsets.all(12),
          margin: EdgeInsets.fromLTRB(12, 24, 0, 0),
          decoration: new BoxDecoration(
              // 线性渐变色
              gradient: const LinearGradient(
                  // 方向和色值数组。这里设为从上到下的红绿蓝，默认是从左到右
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.green, Colors.blue])),
//          color: Colors.grey,
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
