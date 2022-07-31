import 'package:flutter/material.dart';
import 'package:miso/LoginPage.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:miso/chat.dart';
import 'package:page_transition/page_transition.dart';
import 'notification.dart';
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
      appBar: AppBar(
        title: Text('MISO'),
        backgroundColor: Color(0xff54AA8B),
        centerTitle: true,
        leading:
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: Hamberger(),
                  )
              );
            },
          ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              Get.to(Notice());
            },
          ),
        ],
      ),


      body: Container(
          child: Column(
            children: [
              Icon(
                Icons.image,
                size: 300,
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
            IconButton(
                onPressed: (){
                  Get.to(MisoHome());
                },
                icon: Icon(Icons.home,
                  color: Colors.white,)
            ),

            Spacer(),

            IconButton(
                onPressed: (){
                  Get.to(Chat());
                },
                icon: Icon(Icons.chat_outlined,
                  color: Colors.white,)
            ),

            Spacer(),

            IconButton(
                onPressed: (){
                  Get.to(Login());
                },
                icon: Icon(Icons.account_circle_outlined,
                  color: Colors.white,)
            ),
            SizedBox(width: 30,)
          ],
        ),
      ),

    );
  }
}
