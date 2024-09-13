import 'package:flutter/material.dart';

void main(){
  runApp(Msg1App());
}

class Msg1App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MsgUi05(),
    );
  }
}
class MsgUi05 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.brown,

      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("Layout Msg")),),

      body:
      Container(
        padding: EdgeInsets.symmetric(horizontal: 11),
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Container(
              //margin: EdgeInsets.only(right: 11),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Raman',
                    style: TextStyle(
                        fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  Text('Hi, How are you?')
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('11.11 am'),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Text('2'),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}