import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(grr125());
}
class grr125 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hgrr125(),
    );
  }
}
class Hgrr125 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("Gradient Sweep")),
      ),


      body: Stack(
        children: [
          Center(
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                  gradient: SweepGradient(
                    colors: [
                      Colors.purple,
                      Colors.red,
                    ]
                  )
              ),
            ),
          ),

/*
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
            ),
          )
*/
        ],
      ),
    );
  }
}