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
        color: Colors.grey,
        child: Column(

          ///by default column kosnsi axis kaha hoti h
          ///mainAxis in column = starting point
          ///crossAxis in column = center point
          ///length or width kitni hoti h, widget ki??
          ///by default ko change b kr skte mainAxisAlignment mein
          ///by default to start mein hi h widget, but esko change b kr skte

          //mainAxisAlignment: MainAxisAlignment.start,

          //mainAxisAlignment: MainAxisAlignment.center,
          ///widget ko center mein kr dega

          //mainAxisAlignment: MainAxisAlignment.end,
          ///widget ko page k end mein kr dega

          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          ///jitna space 2 k beech mein uske half space mein top or bottom vale ko set kr dega

          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ///top vale ko top mein,bottom ko bottom,baki ko 'evenly'

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ///sbko ek jitna space mein set kr dega, beech mein

          ///bydefalut to center m hota h crossAxis
          //crossAxisAlignment: CrossAxisAlignment.center,

          //crossAxisAlignment: CrossAxisAlignment.end,,

          //crossAxisAlignment: CrossAxisAlignment.stretch,

          //crossAxisAlignment: CrossAxisAlignment.start,

          //crossAxisAlignment: CrossAxisAlignment.baseline,

          children: [
            Text('cat', style: TextStyle(fontSize: 30,),),
            Text('hello', style: TextStyle(fontSize: 30,),),
            Text('wonderful', style: TextStyle(fontSize: 30,),),
            Text('acknowledgement', style: TextStyle(fontSize: 30),),
            Text('have a nice day ahead', style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}