import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/PageOne.dart';
import 'package:flutter_demo/pages/PageThree.dart';
import 'package:flutter_demo/pages/PageTwo.dart';

import 'package:fluttertoast/fluttertoast.dart';

/// create on 2019/5/21 by JasonZhang
/// desc：主界面
class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new MaterialApp(home: MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  List<Widget> mPages = List<Widget>(); // 主界面的页面列表
  int mCurrentIndex = 0; // 当前展示的界面下标

  @override
  void initState() {
    super.initState();
    mPages
      ..add(PageOne())
      ..add(PageTwo())
      ..add(PageThree()); // 初始化申明三个Tab页面。 .. 串起来
//    mPages.add(PageOne());
//    mPages.add(PageTwo());
//    mPages.add(PageThree());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "首页主界面",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: mPages[mCurrentIndex], // body显示的界面
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            // 底部三个item，指定图标和文案。Icons.home等图标是系统自带提供的。
            // currentIndex的item的图标和文案颜色为theme颜色，未激活状态的为默认黑色
            // 也可以用activeIcon指定激活状态下的ICON图标，一般不会这样做
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('模板中心'),
                /*activeIcon: Icon(Icons.access_alarm)*/),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('我的作品')),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text('我的信息'))
          ],
          currentIndex: mCurrentIndex, // 指定下标值等于mCurrentIndex变量
          onTap: (int index) {
            Fluttertoast.showToast(
                msg: "click $index",
                toastLength: Toast.LENGTH_SHORT, // 默认为LENGTH_SHORT，可改为LENGTH_LONG
                gravity: ToastGravity.BOTTOM, // 默认为bottom，显示在底部，可改为居中或头部
                timeInSecForIos: 2, // iOS系统上显示时长，默认为1，单位s
                backgroundColor: Colors.red, // 背景色，默认为黑色
                textColor: Colors.white); // 文字颜色，默认为白色

            // 点击事件，点击下标值赋给mCurrentIndex，触发改变currentIndex值、刷新底部导航栏的样式
            setState(() {
              mCurrentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
