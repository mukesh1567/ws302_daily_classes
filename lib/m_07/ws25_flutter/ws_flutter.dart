
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(home: Scaffold(
    appBar: AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      title: Text('Home'),
    ),
    body: Text('Hello Future Flutter developers!!', style: TextStyle(fontSize: 34),),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        ///set of instructions to be performed whenever the button is tapped
      },
      child: Icon(Icons.add),
    ),
  )));

}