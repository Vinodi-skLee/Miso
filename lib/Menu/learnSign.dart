import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnSign extends StatefulWidget {
  const LearnSign({Key? key}) : super(key: key);

  @override
  State<LearnSign> createState() => _LearnSignState();
}

class _LearnSignState extends State<LearnSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('수화 배우기'),
        backgroundColor: Color(0x54AA8B),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //Get.to(Login());
            },
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
            children:[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
            ]
        ),
      ),

    );
  }
}
