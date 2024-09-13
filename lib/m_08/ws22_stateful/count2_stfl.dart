import 'package:flutter/material.dart';

void main(){
  runApp(CApp2208());
}
class CApp2208 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Count2208(),
    );
  }
}

class Count2208 extends StatefulWidget{
  @override
  /*State<StatefulWidget> createState() {
    return HoPageState();
  }*/
  ///single line return
  State<StatefulWidget> createState() => HoPageState();
  }


class HoPageState extends State<Count2208>{



  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text("Counter Page", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,
          ),),
        ),
      ),

      body: Center(
          child:
          Text("$counter", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
          ),)
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;

          setState(() {

          });

          print("Count : $counter");
        }, child: Icon(Icons.add),
      ),
    );
  }


}