import 'package:flutter/material.dart';

///ctrl + alt + shift + L
void main(){
  runApp(App0108());
}

class App0108 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextApp(),
    );
  }
}

class TextApp extends StatelessWidget{

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    ///value ko set kia
    //nameController.text = 'Hello';

    return Scaffold(

      backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text("Text Field",
          style: TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 35,
            fontFamily: 'cursiveFont',
            color: Colors.black45,
          ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(

              ///controller user se input lene k liye
            controller: nameController,
              decoration: InputDecoration(

                ///outline di gyi h, ab padding mein padding krege
                border: OutlineInputBorder()
              ),
            ),
          ),
          TextButton(onPressed: (){

            ///value ko get kia

            print('Name entered is ${nameController.text}');
          }, child: Text('Get Value'))
        ],
      ),
      //backgroundColor: Colors.grey,
    );
  }
}