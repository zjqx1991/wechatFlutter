import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoadingPageState();
  }
}

class LoadingPageState extends State<LoadingPage> {

  //启动回调
  void _delayesComplete() {
    Navigator.of(context).pushReplacementNamed('/app');
  }


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), _delayesComplete);
  }

  @override
  Widget build(BuildContext context) {
    // 启动页
    return Container(
      color: Colors.greenAccent,
      //child: Image.asset('images/loading.png'),
    );
  }
}