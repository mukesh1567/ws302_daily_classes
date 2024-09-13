import 'package:flutter/material.dart';

void main(){
  runApp(sw123());
}

class sw123 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hsw123(),
    );
  }
}
class Hsw123 extends StatefulWidget{

  @override
  State<Hsw123> createState() => _Hsw123State();
}

class _Hsw123State extends State<Hsw123> {
  ///stateless se stateful mein change krne se, on-off switch
  ///eska use????
  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("switch",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
      ),
      body: Switch(
        ///stateful ka topic h, later do it
        value: isEnable,
        onChanged: (value){
          isEnable = value;
          setState(() {

          });
        },
      ),

    );
  }
}