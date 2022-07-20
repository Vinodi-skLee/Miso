import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miso/home.dart';

class Communication extends StatefulWidget {
  const Communication({Key? key}) : super(key: key);

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('소통하기'),
        backgroundColor: Color(0x54AA8B),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
            children:[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  //Get.to(MisoHome());
                },
              ),
            ]
        ),
      ),

    );
  }
}