import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/PageOne.dart';
import 'package:flutter_demo/pages/PageThree.dart';
import 'package:flutter_demo/pages/PageTwo.dart';

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
  List<Widget> mPages = List<Widget>();
  int mCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
    mPages..add(PageOne())..add(PageTwo())..add(PageThree());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "首页主界面",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: mPages[mCurrentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('模板中心')),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('我的作品')),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text('我的信息'))
          ],
          currentIndex: mCurrentIndex,
          onTap: (int index) {
            setState(() {
              mCurrentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
