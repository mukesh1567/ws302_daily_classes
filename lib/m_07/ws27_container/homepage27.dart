import 'package:flutter/material.dart';

class Homepage27 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('Mie App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          
        ),
        ),

      ),
      body:
      Center(
        child: Column(
          children: [
            Container(
              width: 350,
              height: 100,
              decoration:
              BoxDecoration(
                color: Colors.amber,
                borderRadius:
                //BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                //BorderRadius.vertical(top: Radius.elliptical(15, 50)),
                //BorderRadius.horizontal(left: Radius.circular(20)),
                BorderRadius.circular(20),
                //BorderRadius.all(Radius.elliptical(15, 50)),
                //BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                  //strokeAlign: BorderSide.strokeAlignOutside,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 8,
                    blurRadius: 5,
                    offset: Offset(15, 10),
                  ),
                ],
              ),
              child: Center(
                child: Text('Happy to see here!!',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 30,
                  fontFamily: 'cursiveFont',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,

                ),
                ),
              ),
            ),
             /*
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 4,
                    blurRadius: 3,
                    offset: Offset(10,5),
                  )
                ],
              ),
              child: Center(
                child: Text('what are you doing',
                style: TextStyle(fontSize: 30,
                fontFamily: 'cursiveFont'),),
              ),
              ),
            Container(
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black87,
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 5,
                    offset: Offset(11,5),

                  )
                ],
              ),
              child:
              Center(
                child: Text('why are you here?',
                style: TextStyle(fontSize: 28,
                fontFamily: 'cursiveFont',
                color: Colors.lightGreenAccent)),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black45,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 11,
                    blurRadius: 4,
                    offset: Offset(10,5),
                  ),
                ],
              ),
              child: Center(
                child: Text("who are you?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: 'cursiveFont',
                ),
                ),
              ),
            ),
               */
          ],
        ),
      ),
      backgroundColor: Colors.lightGreen,
    );
  }
}