import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(grr123());
}
class grr123 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hgrr123(),
    );
  }
}
class Hgrr123 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("Gradient")),
      ),
      body: Container(

        // width: 200,
        // height: 200,

        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(

          //shape: BoxShape.circle,

          ///3d view k liye dark se light color

            gradient: LinearGradient(
              ///sunset ki UI bna skte

              //begin: Alignment.topCenter,
              //end: Alignment.bottomCenter,

              begin: Alignment.topRight,
              end: Alignment.bottomLeft,

                stops: [0.2,1],
                colors: [
                  Color(0xffa18cd1),
                  Color(0xfffbc2eb)

                ]
                  
                /*stops: [0.2,0.7,0.8,0.9],
              colors: [
              
              // Colors.purple,
              // Colors.red,
                
                Color(0xff61a3ff),
                Color(0xFF1865cC),
                Color(0xFF004196),
                Color(0xFF01306c),
              ]*/
            )
        ),
      ),
    );
  }
}