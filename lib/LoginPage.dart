import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

const kPrimaryColor = Color(0xff54AA8B); //메인색깔(임시)

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  CollectionReference database = FirebaseFirestore.instance.collection('user');
  late QuerySnapshot querySnapshot;

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        //margin: EdgeInsets.fromLTRB(20,0,20,0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon/miso.png', width: 70,),
            SizedBox(height: 20,),
            Text("SNS 계정으로 로그인하세요.",
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: OutlinedButton(
                onPressed: () async {
                  final UserCredential userCredential = await signInWithGoogle();

                  User? user = userCredential.user;

                  if (user != null) {
                    int i;
                    querySnapshot = await database.get();

                    for (i = 0; i < querySnapshot.docs.length; i++) {
                      var a = querySnapshot.docs[i];

                      if (a.get('uid') == user.uid) {
                        break;
                      }
                    }

                    if (i == (querySnapshot.docs.length)) {
                      database.doc(user.uid).set({
                        'email': user.email.toString(),
                        'name': user.displayName.toString(),
                        'uid': user.uid,
                      });
                    }
                    if (user != null)
                      Get.to(Login());
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icon/google.png', width: 20,),
                    Text("  구글 계정으로 로그인",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                )
                ,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: OutlinedButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icon/kakao.png', width: 20,),
                    Text("  카카오 계정으로 로그인",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                )
                ,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),),
            )
          ],
        ),
      ),
    );
  }
}