import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppPageState();
  }
}

class AppPageState extends State<AppPage> {

  //选中tabBar下标
  int _currentIndex = 0;
  //tabBar
  List<BottomNavigationBarItem> bottomList = [

    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      title: Text(
        '微信',
        style: TextStyle(
          fontSize: 12.0
        ),
      ),
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.supervisor_account),
        title: Text(
            '通讯录'
        )
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        title: Text(
            '发现'
        )
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      title: Text('我'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromRGBO(24, 186, 77, 1.0),
        type: BottomNavigationBarType.fixed,
          items: bottomList
      ),
    );
  }

}