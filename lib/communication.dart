import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';
import 'hamberger.dart';
import 'notification.dart';
import 'package:miso/LoginPage.dart';
import 'package:miso/chat.dart';
import 'package:miso/home.dart';

class CommunicationApp extends StatefulWidget {
  const CommunicationApp({Key? key}) : super(key: key);

  //final user = FirebaseAuth.instance.currentUser;
  @override
  State<CommunicationApp> createState() => _CommunicationAppState();
}

const data = [
  "카톡 친구 구해용 !!!" " \nEun  2022.08.10",
  "내일 배드민턴 치려하는데 같이 치러갈 사람 있을까..." " \nLovedive  2022.08.09",
  "아니,,, 서울 대박이던데" " \nhey  2022.08.09",
  "서울 어떡해요 ㅠㅠ" " \nhappygirl  2022.08.09",
  "포항시 북구 장애인복지센터가 어디인지 궁금합니다." " \neuni  2022.08.08",
  "How Improve your English Skill?" " \nohbba  2022.08.07",
  "청각장애인분들 중에 해외 여행 가보신 분 계신가요?" " \nIlovetrip  2022.08.07",
  "드디어 Eun님과 동네카페에서 접선 !" " \nLJP  2022.08.07",
  "시각장애인 보호자분들 주목해주세요:)" " \nGOGOGO  2022.08.06",
  "장애인 고용 관련해서 궁금한게 있습니다. 연락주..." " \nhello  2022.08.06",
];

class _CommunicationAppState extends State<CommunicationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
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
        margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: //ListView(
          //children: <Widget>[
            Column(
              children: [
                Container(
                  //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icon/misoblack.png', width: 30,),
                      Text(
                        "  소통하기  ",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset('assets/icon/misoblack.png', width: 30,),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              minimumSize: Size(380, 70),
                            ),
                            child: Text("자유게시판"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              minimumSize: Size(380, 70),
                            ),
                            child: Text("우리친구해요"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              minimumSize: Size(380, 70),
                            ),
                            child: Text("보호자이야기"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //전체보기

                Container(
                  child: ListView.separated(
                    itemCount: data.length,
                    itemBuilder: (BuildContext ctx, int idx) {
                      return Container(
                        child: Text(
                          data[idx],
                          style: TextStyle(
                              fontSize: 16,
                              //color: Colors.black,
                              //fontWeight: FontWeight.bold,
                              ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext ctx, int idx) {
                      return Divider();
                    },
                  ),
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  height: 220,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                ),
              ],
            ),
          //],
        //),
      ),

      //bottom bar 구현
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
                  Icons.home,
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
