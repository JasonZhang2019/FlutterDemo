import 'package:flutter/material.dart';
import 'package:flutter_demo/Login.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "我的信息",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(title: Text("我的信息")),
          body: new RaisedButton(
              child: new Text("登录"),
              onPressed: () {
                //跳转到新的页面调用 navigator.push方法
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Login()));
              })),
    );
  }
}