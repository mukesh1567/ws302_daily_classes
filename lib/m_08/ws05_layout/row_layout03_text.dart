import 'package:flutter/material.dart';

void main(){
  runApp(FoxApp());
}
class FoxApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextLayout(),
    );
  }
}
class TextLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(
          child: Text('Text Layout',
          style: TextStyle(
            fontSize: 28,
          ),
          ),
        ),
      ),
      body:
      Container(
        //width: 400,

        color: Colors.grey,
        child: Row(

           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text('Cat', style: TextStyle(fontSize: 30,),),
            Text('Bat', style: TextStyle(fontSize: 30,),),
            Text('Dog', style: TextStyle(fontSize: 30,),),
            Text('Fox', style: TextStyle(fontSize: 30),),
            Text('Ant', style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );
  }
}