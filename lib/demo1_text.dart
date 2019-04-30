import 'package:flutter/material.dart';

void main() => runApp(Demo1App());

class Demo1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textDecorationList = new List<TextDecoration>();
    textDecorationList.add(TextDecoration.lineThrough);
    textDecorationList.add(TextDecoration.underline);

    return MaterialApp(
      title: "demoText",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("demoText")),
        body: Center(
//          widthFactor: 1,
//          heightFactor: 1,
          child: Text(
            "定位栏，开始任务入口，配种时输入不匹配的错误猪精，可提交成功。抓包数据中是有做控制的。",
//            textAlign: TextAlign.left,
//            maxLines: 5,
//            overflow: TextOverflow.fade,
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              decoration: TextDecoration.combine(textDecorationList),
            ),
          ),
        ),
      ),
    );
  }
}
