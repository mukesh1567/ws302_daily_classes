import 'package:flutter/material.dart';

void main(){
  runApp(nviApp01());
}
class nviApp01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nvi01Home(),
    );
  }
}
class Nvi01Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,

      appBar: AppBar(title: Center(child: Text("Navigation 1st page", style: TextStyle(fontSize: 28),)),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return Scaffold(
                ///aisa code b aa skte jike ek hi file m other page hoga

                appBar: AppBar(title: Center(child: Text("Navigation 2nd page")),),

                body: Container(color: Colors.blueGrey,)

              );
            }));
          }, child: Text("Next"),
        ),
      ),
    );
  }
}