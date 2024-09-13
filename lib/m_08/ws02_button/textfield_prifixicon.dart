import 'package:flutter/material.dart';

void main(){
  runApp(TFprifix());
}

class TFprifix extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PriIcon(),
    );
  }
}

class PriIcon extends StatelessWidget{

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white70,

      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(
          child: Text('Prifix Icon',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.redAccent,
                  color: Colors.white54,
                ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,

              ///its use is just like search option with suggestions
              ///then clicking on correct suggestion

              onChanged: (valuu){
                print(valuu);
              },

              decoration: InputDecoration(

                ///input se phle koi icon, text,symbol show krna ho

                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.mail_outline),

                //prefixText: ('Mr'),
                //suffixText: ('@gmail.com'),


                hintText: ('Your name input..'),
                label: Text('Name'),
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.indigo,
                    width: 4,
                  )
                )
              ),
            ),
          ),

          TextButton(onPressed: (){
            print('Input is ${nameController.text}');
          }, child: Text('Press Here',
            style: TextStyle(
            fontSize: 30,
          ),
          )
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 4,
                    color: Colors.redAccent,
                  )
                )
              ),
            ),
          )
        ],
      )
    );
  }
}