import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Menu/appGuide.dart';
import 'Menu/communication.dart';
import 'Menu/learnSign.dart';

class Hamberger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
            ),
            accountName: Text('로그인'),
            accountEmail: Text('로그인하세요.'),
            decoration: BoxDecoration(
                color: Color(0x54AA8B),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
          ),
          ListTile(
            leading: Icon(
              //시작부분에 아이콘 넣기
              Icons.my_library_books,
              color: Colors.grey[850],
            ),
            title: Text('앱 가이드'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppGuide()
                  )
              );
            },
            trailing: Icon(Icons.add), //뒤쪽에 아이콘 넣기
          ),
          ListTile(
            leading: Icon(
              Icons.waving_hand,
              color: Colors.grey[850],
            ),
            title: Text('수화 배우기'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearnSign()
                  )
              );
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.grey[850],
            ),
            title: Text('소통하기'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Communication()
                  )
              );
            },
            trailing: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}