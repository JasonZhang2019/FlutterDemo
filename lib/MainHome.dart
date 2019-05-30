import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/PageOne.dart';
import 'package:flutter_demo/pages/PageThree.dart';
import 'package:flutter_demo/pages/PageTwo.dart';

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

class MyHomePageState extends State<MyHomePage> {
  List<Widget> mPageList = new List();

  @override
  void initState() {
    super.initState();
    mPageList.add(new PageOne());
    mPageList.add(new PageTwo());
    mPageList.add(new PageThree());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "首页主界面",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              backgroundColor: Colors.white,
              items: [
                // 底部三个item，指定图标和文案。Icons.home等图标是系统自带提供的。
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 24,
                  ),
                  title: Text('模板中心'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.list,
                      size: 24,
                    ),
                    title: Text('我的作品')),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.message,
                      size: 24,
                    ),
                    title: Text('我的信息'))
              ],
            ),
            tabBuilder: (BuildContext context, int index) {
              // 需要放在集合中指向每次复用对象，如果这里写new PageOne()则每次也是重新创建。
              return mPageList[index];
            }));
  }
}
