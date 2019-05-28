import 'package:flutter/material.dart';
import 'loading.dart';
import 'app.dart';

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
      },
      home: LoadingPage(),
    );
  }
}

final ThemeData revanDefaultTHeme = ThemeData(
//  highlightColor: Color.fromRGBO(24, 186, 0, 1.0),
//  primaryColor: Color.fromRGBO(232, 232, 232, 1.0),
//  scaffoldBackgroundColor: Color(0xFFebebeb),
//  cardColor: Color.fromRGBO(232, 0, 232, 1.0),

);