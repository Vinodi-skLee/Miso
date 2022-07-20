import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:miso/home.dart';

class MisoApp extends StatelessWidget {
  const MisoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return const Center(
            child: Text("firebase load failed"),
          );
        }
        if(snapshot.connectionState == ConnectionState.done){
          return MisoHome();
        }
        return const CircularProgressIndicator();
      },
    );
  }
}