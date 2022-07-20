import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppGuide extends StatefulWidget {
  const AppGuide({Key? key}) : super(key: key);

  @override
  State<AppGuide> createState() => _AppGuideState();
}

class _AppGuideState extends State<AppGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MISO 앱 사용법'),
        backgroundColor: Color(0x54AA8B),
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