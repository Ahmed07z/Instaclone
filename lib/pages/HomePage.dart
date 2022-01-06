import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';



class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool inSignedIn = false;
  LoginUser(){

  }
  Widget buildHomeScreen() {
    return Text("Already Signed in");
  }

  Scaffold buildSignInScreen() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.black,Colors.grey]
          )
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Photogram",
                style: TextStyle(
                    fontSize: 70.0, color: Colors.white, fontFamily: "myfonts"),
              ),
              GestureDetector(
                onTap:LoginUser,
                child: Container(
                  width: 270.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: const AssetImage("assets/images/Sign.png"),
                    fit: BoxFit.cover,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (inSignedIn) {
      return buildHomeScreen();
    } else {
      return buildSignInScreen();
    }
  }
}
