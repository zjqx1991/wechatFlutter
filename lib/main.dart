import 'package:flutter/material.dart';
import 'loading.dart';
import 'app.dart';
import 'chat/search_page.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,

      title: 'Wechat-Demo',
      theme: revanDefaultTHeme,
      routes: {
        '/app':(context) => AppPage(),
        '/search':(context) => SearchPage(),
      },
      home: LoadingPage(),
    );
  }
}

final ThemeData revanDefaultTHeme = ThemeData(
  //点击按钮的颜色
  //highlightColor: Color.fromRGBO(24, 186, 0, 1.0),
//  primaryColor: Color.fromRGBO(235, 235, 235, 1.0),
  primaryColor: Colors.black,
//  scaffoldBackgroundColor: Color(0xFFebebeb),
//  cardColor: Color.fromRGBO(232, 0, 232, 1.0),
//  primaryColor: Colors.black
);