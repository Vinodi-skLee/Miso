import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:miso/LoginPage.dart';
import 'package:miso/chat.dart';
import 'package:miso/hamberger.dart';
import 'package:miso/home.dart';
import 'package:page_transition/page_transition.dart';

class Notice extends StatefulWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
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
            icon: Icon(Icons.notifications),
            onPressed: () {
              Get.to(Notice());
            },
          ),
        ],
      ),
      drawer: Hamberger(),
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
                        "알림",
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
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Color(0xff54AA8B),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "자유게시판",
                          style: TextStyle(
                            color: Color(0xff54AA8B),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text("10분 전",
                            style: TextStyle(
                              color: Colors.grey,
                            )
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
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
                        Text(
                            "포항에 놀러...",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            text: TextSpan(
                                text: "글에 새로운 댓글이 달렸습니다.",
                                style: TextStyle(
                                  color: Colors.black,
                                )
                            ),
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
                                text: "저는 환여횟집 추천해요! 2층인데 엘리베이터도 있거덩여",
                                style: TextStyle(
                                  color: Colors.grey,
                                )
                            ),
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
                  Icons.chat_outlined,
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
