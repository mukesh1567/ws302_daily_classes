import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Hello Participant'),
      ),
      body: Text('Why are you here??',
      style: TextStyle(
        fontSize: 34,
          fontFamily: 'cursiveFont'
      ),
      ),
      backgroundColor: Colors.cyan,
    );
  }
}