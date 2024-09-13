import 'package:flutter/material.dart';

void main(){
  runApp(GrA02());
}

class GrA02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: gri02(),
    );
  }
}
class gri02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(
          child: Text("GridView",
            style: TextStyle(
                fontSize: 28
            ),),
        ),
      ),

      body: GridView.extent(
        ///jaha space jyda milegi, automatic adjust kr dega
        maxCrossAxisExtent: 100,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            ///agar width height nhe denge to b view hoga
            //width: double.infinity,
            //height: 120,
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
        ],),
    );
  }
}