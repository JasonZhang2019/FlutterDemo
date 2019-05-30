import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 2019/5/24 created by 张宇(Jason)
/// 类注释：登录
class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  // 用户名的控制器
  final TextEditingController userNameCtrl = TextEditingController();

  //密码的控制器
  final TextEditingController passwordCtrl = TextEditingController();

  // 光标跳转的密码输入框对象
  FocusNode pwdNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            title: Text("登录"),
            centerTitle: true, //文字title居中
            leading: new BackButton()),
        // 有输入框，用SingleChildScrollView嵌套Column。否则弹出输入键盘时有溢出bug。bottom overflowed by X PIXELS
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.fromLTRB(40, 24, 40, 0),
              child: TextField(
                controller: userNameCtrl,
                // 指定该输入框是输入手机号码的
                keyboardType: TextInputType.phone,
                // 回车键用途，输入下一项。还需要具体实现。
                textInputAction: TextInputAction.next,
                // 键盘动作按钮点击之后执行的代码：光标切换到指定的输入框
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(pwdNode),
                maxLength: 11,
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle),
                  labelText: "请输入用户名",
//                  helperText: "一般为手机号码", // 一般不设置
                  hintText: "11位手机号码",
//                  prefixIcon: Icon(Icons.account_circle), // 输入框线内
//                  prefix: Text("用户名"),
//                  prefixText: "+86",
                ),
              ),
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(40, 4, 40, 0),
              child: TextField(
                controller: passwordCtrl,
                focusNode: pwdNode,
                keyboardType: TextInputType.text,
                // 回车键用途，完成输入
                textInputAction: TextInputAction.done,
                maxLength: 11,
                obscureText: true,
                // 密码输入，隐藏
                decoration: InputDecoration(
                  icon: Icon(Icons.lock_outline),
                  labelText: "请输入密码",
//                  suffixIcon: Icon(Icons.visibility_off),
//                  suffixText: "(元)",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 36, 40, 0),
              child: Row(children: <Widget>[
                new Expanded(
                    child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    doLogin();
                  },
                  child: new Text(
                    "登录",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ))
              ]),
            ),
          ],
        )));
  }

  void doLogin() {
    if (userNameCtrl.text.isEmpty || passwordCtrl.text.isEmpty) {
      Fluttertoast.showToast(msg: "请输入用户名和密码");
    } else {
      Fluttertoast.showToast(
          msg: "用户名: ${userNameCtrl.text}，密码: ${passwordCtrl.text}");
    }
  }
}
