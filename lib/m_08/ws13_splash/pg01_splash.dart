import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws13_splash/pg02_home.dart';

void main(){
  runApp(sps01App());
}

class sps01App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Spls01Ho(),
    );
  }
}

class Spls01Ho extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home1308()));
    });

    return Scaffold(
      backgroundColor: Colors.amber.shade300,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            ),

            Text("Splash Demo",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
              color: Colors.white,
              ),)
          ],
        ),
      ),
    );
  }
}