import 'package:flutter/material.dart';

void main(){
  runApp(List01App());
}

class List01App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: List01Home(),
    );
  }
}
class List01Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text("ListView",
          style: TextStyle(
              fontSize: 28,
          ),),
        ),
      ),

      body:

      ///SingleChildScrollView(child: Column(children: [
      ///ye remove krke ListView lga denge
      ///multiple content same UI (ho tb ListView use krte
      
      ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(10)
            ),

          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10)
            ),

          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)
            ),

          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10)
            ),

          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10)
            ),

          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10)
            ),

          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10)
            ),

          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)
            ),

          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10)
            ),

          ),
        ],
      ),
    );
  }
}