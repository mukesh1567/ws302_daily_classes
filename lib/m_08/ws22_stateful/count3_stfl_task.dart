import 'package:flutter/material.dart';

void main(){
  runApp(CApp2208a());
}
class CApp2208a extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Count2208a(),
    );
  }
}

class Count2208a extends StatefulWidget{
  @override

  State<StatefulWidget> createState() => HoPageState();

  }

  
class HoPageState extends State<Count2208a>{


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
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.greenAccent
            ),
            child: Center(
              child: Text("$counter", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,
              ),),
            ),
          )
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