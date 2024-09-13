import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws14_routes/pg2_home.dart';

class Spls1408 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4),(){

      ///Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Ho1408()));
      ///Navigator.pushNamed(context, '/home');

      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 3
          ),
          gradient: LinearGradient(
            colors: [
              Colors.indigo,
              Colors.green,
            ]
          ),
        ),
        child: Center(
          child: Text("Welcome Flutter Demo App", style: TextStyle(
            fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white
          ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}