import 'package:flutter/material.dart';

void main(){
  runApp(stkk01());
}

class stkk01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stkhome01(),
    );
  }
}

class Stkhome01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("Stack",style: TextStyle(fontSize: 28),)),
      ),

      body: Stack(
        children: [
          Container(
            // width: 400,
            // height: 400,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
            ),
          ),

          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),

          /*Container(
          ///galt treka h,portrait landscape mein issue hoga esse
          ///positioned or align use kre
            margin: EdgeInsets.only(top: 500, left: 150),
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),*/

          Positioned(
            bottom: 10,
            left: 15,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
            ),
          ),

        ],
      ),
    );
  }
}