import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(grr124());
}
class grr124 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hgrr124(),
    );
  }
}
class Hgrr124 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("Gradient Radial")),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(

            gradient: RadialGradient(

              //center: Alignment.topCenter,

              ///focal ane pr center kam nhe krega

                focal: Alignment.bottomCenter,

              ///alg alg value pr alg effect hoga

              focalRadius: 0.5,
              radius: 0.6,
              colors: [
                Colors.brown,
                Colors.limeAccent

                // Color(0xfffa709a),
                // Color(0xffa6c1ee)
              ]

            )
        ),
      ),
    );
  }
}