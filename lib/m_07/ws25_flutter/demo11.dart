import 'package:flutter/material.dart';

void main(){
  
  runApp(MaterialApp(home: Scaffold(
    appBar: AppBar(
      foregroundColor: Colors.brown,
      backgroundColor: Colors.orange,
      title: Text('Bharat'),
    ),
    body: Text("hello developer",
      style:TextStyle(fontSize: 30,
        fontStyle: FontStyle.italic),),
    backgroundColor: Colors.redAccent,
    floatingActionButton: FloatingActionButton(
      onPressed: (){

      },
    ),
  ),));
}