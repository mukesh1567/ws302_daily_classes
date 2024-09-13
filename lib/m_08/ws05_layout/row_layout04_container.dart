import 'package:flutter/material.dart';

void main(){
  runApp(Fox1App());
}
class Fox1App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text1Layout(),
    );
  }
}
class Text1Layout extends StatelessWidget{
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
      Row(

        ///by defalut
        ///MainAxisAlignment.start,horizontal hoga
        ///CrossAxisAlignment.center,vertical hoga
        ///height decide by max size of widget

        //mainAxisAlignment: MainAxisAlignment.center,
        /// widget center m hogye

        //mainAxisAlignment: MainAxisAlignment.end,
        ///widget last mein chle jaynge

        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        ///jitna space beech valo k, uska half start or end m

        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ///1st or last edge touch hoge baki equal spacing

        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ///sbke beech equal space but not touching edge

        //crossAxisAlignment: CrossAxisAlignment.start,
        ///all widget top touching

        //crossAxisAlignment: CrossAxisAlignment.end,
        ///all widget bottom touching

        //crossAxisAlignment: CrossAxisAlignment.stretch,
        ///widget stretch along height

        //crossAxisAlignment: CrossAxisAlignment.baseline,
        ///text ho to ek line pe aajega corss nhe hoga



      children: [
          Container(width: 70,height: 70,color: Colors.redAccent,
          ),
          Container(width: 70,height: 150,color: Colors.indigo,
          ),
          Container(width: 70,height: 70,color: Colors.yellowAccent,
          ),
          Container(width: 70,height: 200,color: Colors.cyan,
          ),
          Container(width: 70,height: 70,color: Colors.pink,
          ),
        ],
      ),
    );
  }
}