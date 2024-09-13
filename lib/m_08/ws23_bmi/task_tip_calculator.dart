import 'package:flutter/material.dart';

void main(){
  runApp(TipApp());
}

class TipApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TipCHome(),
    );
  }
}

class TipCHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade200,
      title: Center(
        child: Text("Tip Calculator",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,

        ),),
      ),
      ),
    );
  }
}