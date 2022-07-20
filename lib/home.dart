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
          child: Column(
            children: [
              Icon(
                Icons.image,
                size: 300,
              ),
            ],
          )),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff54AA8B),

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,

        onTap: (int index) {
        },

        items: [
          BottomNavigationBarItem(
            // title: Text('Favorites'),
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
            // title: Text('Music'),
              icon: Icon(Icons.chat),
              label: 'Chat'
          ),
        ],
      ),
    );
  }
}
