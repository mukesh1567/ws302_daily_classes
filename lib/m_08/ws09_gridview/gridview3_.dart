import 'package:flutter/material.dart';

void main(){
  runApp(GrA03());
}

class GrA03 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: gri03(),
    );
  }
}
class gri03 extends StatelessWidget{
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

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 2/3,
          ///width by height ki ratio

          children: [
            Container(
              ///width height se koi fark nhe pdta,default square hi ayega
              //width: 250,
              //height: 150,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
          ],),
      ),
    );
  }
}