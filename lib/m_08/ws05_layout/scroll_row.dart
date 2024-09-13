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

      SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(


          children: [
            Container(width: 100,height: 100,color: Colors.redAccent,),
            Container(width: 100,height: 100,color: Colors.indigo,),
            Container(width: 100,height: 100,color: Colors.yellowAccent,),
            Container(width: 100,height: 100,color: Colors.cyan,),
            Container(width: 100,height: 100,color: Colors.pink,),

            Container(width: 100,height: 100,color: Colors.yellow,),
            Container(width: 100,height: 100,color: Colors.red,),
            Container(width: 100,height: 100,color: Colors.greenAccent,),
            Container(width: 100,height: 100,color: Colors.brown,),
            Container(width: 100,height: 100,color: Colors.green,),


          ],
        ),
      ),
    );
  }
}