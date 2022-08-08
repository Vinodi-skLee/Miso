import 'package:flutter/material.dart';
import 'package:miso/LoginPage.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:miso/chat.dart';
import 'package:miso/convenience.dart';
import 'package:page_transition/page_transition.dart';
import 'notification.dart';
import 'hamberger.dart';
import 'Menu/appGuide.dart';
import 'communication.dart';
import 'Menu/learnSign.dart';

final imageList = [
  Image.asset('assets/icon/disabled.jpg',fit: BoxFit.fill),
  Image.asset('assets/icon/disabled2.jpg',fit: BoxFit.fill),
  //Image.asset('assets/icon/miso.png',fit: BoxFit.fill),
];

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
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,  //자동재생 여부
                    ),
                  items: imageList.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: image,
                          ),
                        );
                      },
                    );
                  }).toList(),
                  //item 리스트 항목 형성
                ),

                //!!!!!! 소통하기
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  height: 150,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "소통하기",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(CommunicationApp());
                            },
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

                //!!!!!! 복지 및 혜택
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  height: 400,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "복지 및 혜택",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                            ),
                            child: Text("소득지원"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                            ),
                            child: Text("일상생활"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                            ),
                            child: Text("건강의료"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                            ),
                            child: Text("안전권익"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                            ),
                            child: Text("주거지원"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Color(0xff54AA8B),
                              primary: Colors.white,
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                            ),
                            child: Text("보육교육"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "소득지원",
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
                            "서울특별시, 소득지원기준 변경",
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
                          Text(
                            "일상생활지원",
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
                            "부산광역시, 장애인 생활 보조금... ",
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
                          Text(
                            "건강의료",
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
                            "포항시 장애인 건강의료보험",
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
                          Text(
                            "안전&권익보장",
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
                            "안전 및 권익보장 현재 수준 ...",
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
                          Text(
                            "주거지원",
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
                            "전국 장애인 주거지원금 인상 논의중...",
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
                          Text(
                            "보육&교육",
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
                            "장애인 아동들 보육 및 교육 관련 법 개...",
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

                //!!!!!! 편의시설정보
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  height: 430,
                  //margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "편의시설정보",
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
                            onPressed: () {
                              Get.to(ConvenienceApp());
                            },
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
                          Text(
                            "⭐⭐⭐⭐⭐\n한동대학교 코너스톤홀",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            strutStyle: StrutStyle(fontSize: 16.0),
                            text: TextSpan(
                                text: "장애인을 위한 화장실이 구비되어 있다."
                                    " 엘리베이터도 있어서 장애인들이 나름 편리하게 이용할 수 있는 건물이다."
                                    " 하지만 동선이 많이 복잡하여 보호자와 함께 가는 것을 추천한다.",
                                style: TextStyle(
                                    color: Colors.black,
                                    height: 1.4,
                                    fontSize: 16.0,
                                    fontFamily: 'NanumSquareRegular')),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "⭐⭐⭐\n모캄보 법원점",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "남자화장실이 2층에 있지만 엘리베이터도 없고, 계단의 경사가 너무 급해서 장애인들이 이용하기엔 아주아주 비추 ;;",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "⭐⭐⭐⭐\n다이소 양덕점",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "엘리베이터 있음 ! 계단에도 난간이 설치되어 있어 안전합니다요 !",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),

                //!!!!!! 희망스토리
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  height: 900,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "희망스토리",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(ConvenienceApp());
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.red,
                            ),
                            child: Text("더 보기 >"),
                          ),
                        ],
                      ),

                      Image.asset(
                        'assets/icon/disabled.jpg', //width: 300,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "[대구소식] 휠체어바이크 타고 45㎞ 달린 중증장애인… 민선8기 성공기원",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "대구지체장애인협회 동구지회는 27일 민선8기 성공을 기원하며 휠체어 바이크 라이딩 행사를 열었다. "
                                        "이날 행사에는 중증장애인 30여명이 참여했다. 이들은 팔공산에서 비슬산까지, 금호강에서 낙동강까지라는 문구가 적힌 깃발을 휠체어 바이크에 달고 대구 달성군청에서 동구청까지 45㎞를 이동했다.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'assets/icon/disabled.jpg', //width: 300,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "[대구소식] 휠체어바이크 타고 45㎞ 달린 중증장애인… 민선8기 성공기원",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "대구지체장애인협회 동구지회는 27일 민선8기 성공을 기원하며 휠체어 바이크 라이딩 행사를 열었다. "
                                        "이날 행사에는 중증장애인 30여명이 참여했다. 이들은 팔공산에서 비슬산까지, 금호강에서 낙동강까지라는 문구가 적힌 깃발을 휠체어 바이크에 달고 대구 달성군청에서 동구청까지 45㎞를 이동했다.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
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

      //bottom bar 구현
      // bottomNavigationBar: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: Color(0xff54AA8B),
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.white.withOpacity(.60),
      //     selectedFontSize: 14,
      //     unselectedFontSize: 14,
      //     onTap: (int index) {},
      //     items: [
      //       BottomNavigationBarItem(
      //         // title: Text('Favorites'),
      //           icon: Icon(Icons.home),
      //           label: 'Home'),
      //       BottomNavigationBarItem(
      //         // title: Text('Music'),
      //           icon: Icon(Icons.chat),
      //           label: 'Chat'),
      //     ],
      // child: Column(
      //   children: [
      //     Icon(
      //       Icons.image,
      //       size: 300,
      //     ),
      //   ],
      // )
      // ),

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
