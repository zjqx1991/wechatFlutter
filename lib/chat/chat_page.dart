import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatPageState();
  }
}

class ChatPageState extends State<ChatPage> {
  void _onClickAddComplete() {
    print('点击添加按钮');
    showMenu(
        context: context,
        position: RelativeRect.fromSize(
            Rect.fromLTRB(100, 60, 90, 90), Size(100.0, 150.0)),
        items: [
          PopupMenuItem(child: Icon(Icons.add_circle)),
          PopupMenuItem(child: Icon(Icons.directions)),
          PopupMenuItem(child: Icon(Icons.favorite_border)),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('微信'),
        actions: <Widget>[
          GestureDetector(
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: Color.fromRGBO(255, 255, 255, 0.75),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/search');
            },
          ),
          GestureDetector(
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.add_circle_outline,
                color: Colors.white70,
              ),
            ),
            onTap: _onClickAddComplete,
          ),


        ],
      ),
      body: Container(
        color: Colors.purple,
      ),
    );
  }
}
