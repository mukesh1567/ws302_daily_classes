import 'package:flutter/material.dart';

void main(){
  runApp(nviApp02());
}
class nviApp02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nvi02Home(),
    );
  }
}
class Nvi02Home extends StatelessWidget{
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
              return Material(

                ///1st container lia, fer Material widget se wrap kr dia

                child: Container(
                  color: Colors.grey,
                  child: Center(child: Text("Hello flutter",style: TextStyle(fontSize: 30),)),
                ),
              );
            }));
          }, child: Text("Next"),
        ),
      ),
    );
  }
}