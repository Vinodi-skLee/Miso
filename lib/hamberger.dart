import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:miso/home.dart';
import 'package:page_transition/page_transition.dart';

import 'Menu/appGuide.dart';
import 'communication.dart';
import 'Menu/learnSign.dart';

class Hamberger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: MisoHome(),
                  ));
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(55, 50, 40, 0),
              child: Row(
                children: [
                  Image.asset('assets/icon/communication.png', width: 100,),
                  SizedBox(width: 75,),
                  Image.asset('assets/icon/welfare.png', width: 100,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 20, 40, 30),
              child: Row(
                children: [
                  Text("소통하기",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 90,),
                  Text("복지정보",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(55, 50, 40, 0),
              child: Row(
                children: [
                  Image.asset('assets/icon/place.png', width: 100,),
                  SizedBox(width: 54,),
                  Image.asset('assets/icon/hopeStory.webp', width: 140,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 0, 40, 30),
              child: Row(
                children: [
                  Text("편의시설",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 85,),
                  Text("희망스토리",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff54AA8B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "도움말",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Text(
              "고객 문의",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
