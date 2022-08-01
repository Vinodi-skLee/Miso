import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:miso/home.dart';
import 'package:page_transition/page_transition.dart';

import 'Menu/appGuide.dart';
import 'Menu/communication.dart';
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
            icon: Icon(Icons.arrow_back, color: Colors.black,),
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
              Row(
                children: [

                ],
              ),
              Row(

              ),
            ],
          )
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color(0xff54AA8B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 30,),
            Text(
              "도움말",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 60,),
            Text(
              "고객 문의",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 30,)
          ],
        ),
      ),
    );
  }
}