import 'package:flutter/material.dart';


class ButtonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text('Buttons',
            style: TextStyle(
                color: Colors.lightGreenAccent,
                backgroundColor: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      body: Column(
        children: [

          ElevatedButton(onPressed: (){
            print('Use Things');
          }, child: Text('Elevated Tap')
          ),

          OutlinedButton(onPressed: (){
            print('Nice Work');
          }, child: Text('Outlined Tap')
          ),

          TextButton(onPressed: (){
            print('Work smart');
          }, child: Text('Text Tap')
          ),

          IconButton(onPressed: (){
            print('Hello you');
          }, icon: Icon(Icons.account_circle),
                    //Text('IconButton'),
            ///esme icon ki jgh text b de skte,icon
          ),

          GestureDetector(
            onTap:(){
              print('welcome Gesture');
            },


            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(child: Text('Gesture Tap')),
            ),
          )
        ],
      ),
    );
  }
}