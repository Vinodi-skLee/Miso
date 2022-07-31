import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miso/LoginPage.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'hamberger.dart';
import 'Menu/appGuide.dart';
import 'Menu/communication.dart';
import 'Menu/learnSign.dart';

class MisoHome extends StatefulWidget {
  const MisoHome({Key? key}) : super(key: key);

  //final user = FirebaseAuth.instance.currentUser;
  @override
  State<MisoHome> createState() => _MisoHomeState();
}

class _MisoHomeState extends State<MisoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        title: Text('MISO'),
        backgroundColor: Color(0xff54AA8B),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Get.to(Login());
            },
          ),
        ],
      ),
      drawer: Hamberger(),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: ListView(
            children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/icon/disabled.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            //SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), //모서리를 둥글게
                border: Border.all(color: Colors.black12, width: 2),
              ),
              height: 160,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "소통하기",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 190,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: Colors.red,
                        ),
                        child: Text("더 보기 >"),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "자유게시판",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "내일 배드민턴 치려하는데 저랑 같이 ...",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff5C5C5C),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "친구구해요",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "카톡 친구 구해용 !!!",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff5C5C5C),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "보호자이야기",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "포항시 북구 장애인복지센터가 어디 ...",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff5C5C5C),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //여기서부터 복지 및 혜택
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), //모서리를 둥글게
                border: Border.all(color: Colors.black12, width: 2),
              ),
              height: 160,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              //margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "복지 및 혜택",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 165,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: Colors.red,
                        ),
                        child: Text("더 보기 >"),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "자유게시판",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "내일 배드민턴 치려하는데 저랑 같이 ...",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff5C5C5C),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "친구구해요",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "카톡 친구 구해용 !!!",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff5C5C5C),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "보호자이야기",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "포항시 북구 장애인복지센터가 어디 ...",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff5C5C5C),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff54AA8B),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (int index) {},
        items: [
          BottomNavigationBarItem(
              // title: Text('Favorites'),
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              // title: Text('Music'),
              icon: Icon(Icons.chat),
              label: 'Chat'),
        ],
      ),
    );
  }
}
