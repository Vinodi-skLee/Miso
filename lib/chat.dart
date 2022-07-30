import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:miso/LoginPage.dart';
import 'package:miso/hamberger.dart';
import 'package:miso/home.dart';
import 'package:miso/notification.dart';
import 'package:page_transition/page_transition.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MISO'),
        backgroundColor: Color(0xff54AA8B),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: Hamberger(),
                ));
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // 맨 앞에 정렬
                    children: [
                      Text(
                        "채팅",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                  Divider(color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Miso",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Icon(
                          CupertinoIcons.number_circle_fill,
                          size: 15,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            text: TextSpan(
                                text: "hi",
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            text: TextSpan(
                                text: "10분 전",
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ],
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
            IconButton(
                onPressed: () {
                  Get.to(MisoHome());
                },
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  Get.to(Chat());
                },
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  Get.to(Login());
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                )),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
