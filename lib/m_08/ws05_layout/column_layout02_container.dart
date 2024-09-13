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
      Container(
        width: 300,
        color: Colors.grey,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          crossAxisAlignment: CrossAxisAlignment.start,


          children: [
            Container(width: 150,height: 150,color: Colors.redAccent,
            ),
            Container(width: 150,height: 150,color: Colors.indigo,
            ),
            Container(width: 150,height: 150,color: Colors.yellowAccent,
            ),
            Container(width: 150,height: 150,color: Colors.cyan,
            ),
            Container(width: 150,height: 150,color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}