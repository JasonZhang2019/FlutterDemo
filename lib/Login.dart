import 'package:flutter/material.dart';

/// 2019/5/24 created by 张宇(Jason)
/// 类注释：登录
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            title: Text("登录"),
            leading: new BackButton(
              color: Colors.white, // 返回按钮色值
            )),
        body: new RaisedButton(
          child: new Text("返回"),
          // BackButton内部是执行这个点击方法，表面回到上一个界面
          onPressed: () {
            Navigator.maybePop(context);
          },
        ));
  }
}