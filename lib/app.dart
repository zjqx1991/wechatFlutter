import 'package:flutter/material.dart';
import 'chat/chat_page.dart';
import 'contacts/contacts_page.dart';
import 'find/find_page.dart';
import 'personal/personal_page.dart';

class AppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppPageState();
  }
}

class AppPageState extends State<AppPage> {

  //选中tabBar下标
  int _currentIndex = 0;

  //bottom对应的页面
  ChatPage _chatPage;
  ContactsPage _contactsPage;
  FindPage _findPage;
  PersonalPage _personalPage;

  //当前body显示的内容
  Widget currentBodyPage() {
    switch (_currentIndex) {

      case 0:{

        if(null == _chatPage) {
          _chatPage = ChatPage();
        }
        return _chatPage;
      }
      break;

      case 1:{

        if (null == _contactsPage) {
          _contactsPage = ContactsPage();
        }
        return _contactsPage;
      }
      break;

      case 2:{

        if (null == _findPage) {
          _findPage = FindPage();
        }
        return _findPage;
      }
      break;

      case 3:{

        if (null == _personalPage) {
          _personalPage = PersonalPage();
        }
        return _personalPage;
      }
      break;
      default:{

      }
    }
  }

  //bottom按钮点击回调
  void _onTapComplete(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  //tabBar
  List<BottomNavigationBarItem> bottomList = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.message,
      ),
      title: Text(
        '微信',
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
      body: currentBodyPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromRGBO(24, 186, 77, 1.0),
        type: BottomNavigationBarType.fixed,
          items: bottomList,
        //selectedFontSize: 12.0,//选中文字大小
        onTap: _onTapComplete,
      ),
    );
  }

}