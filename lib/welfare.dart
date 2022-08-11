import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';
import 'hamberger.dart';
import 'notification.dart';
import 'package:miso/LoginPage.dart';
import 'package:miso/chat.dart';
import 'package:miso/home.dart';

const data = [
  "[서울특별시] 소득지원기준 변경" " \nEun  2022.08.10",
  "[부산광역시] 장애인 생활 보조금관련" " \nLovedive  2022.08.09",
  "[경상북도포항시] 장애인 건강의료보험" " \nhey  2022.08.09",
  "[전국] 안전 및 권익보장 현재 수준" " \nhappygirl  2022.08.09",
  "[전국] 전국 장애인 주거지원금 인상 논의중..." " \neuni  2022.08.08",
  "[울산광역시] 장애인 아동들 보육 및 교육 관련 법 개정안 발표" " \nohbba  2022.08.07",
  "[경상남도 거제시] 거제 유명한 여행지에 시각장애인의 안전을 위한 시설 마련" " \nIlovetrip  2022.08.07",
  "[전국] 시각장애인에게 더욱 편리해진 대중교통" " \nLJP  2022.08.07",
  "[서울특별시] 장애인을 위한 공공임대주택 제공" " \nGOGOGO  2022.08.06",
  "[광주광역시] 장애인 아동 재활치료비 지원" " \nhello  2022.08.06",
];

class WelfareApp extends StatefulWidget {
  const WelfareApp({Key? key}) : super(key: key);

  //final user = FirebaseAuth.instance.currentUser;
  @override
  State<WelfareApp> createState() => _WelfareAppState();
}

class _WelfareAppState extends State<WelfareApp> {
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
        child: ListView(
        children: <Widget>[
        Column(
          children: [
            Container(
              //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/misoblack.png', width: 30,),
                  Text(
                    "  복지 및 혜택  ",
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
                        child: Text("소득지원"),
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
                        child: Text("일상생활지원"),
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
                        child: Text("건강의료"),
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
                        child: Text("안전&권익보장"),
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
                        child: Text("주거지원"),
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
                        child: Text("보육&교육"),
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
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                border: Border.all(color: Colors.black12, width: 2),
              ),
              height: 300,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            ),
          ],
        ),
        ],
        ),
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
