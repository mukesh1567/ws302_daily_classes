import 'package:flutter/material.dart';

void main() {
  runApp(TextFApp());
}

class TextFApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextHome(),
    );
  }
}

class TextHome extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(
          child: Text('TextField App',
            style: TextStyle(
              fontSize: 28,
              color: Colors.black45,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          ///with Container
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.text,

                ///alg alg type k 'keyboard' select kr skte, text,number,email,datetime
                //keyboardType: TextInputType.emailAddress,

                ///hide krne k liye jo type kr rhe
                obscureText: true,

                ///dot . ki jgh kuch or character chahiye to
                obscuringCharacter: "*",

                ///typing enable disable krne k liye
                enabled: true,
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Enter your name..',
                    label: Text('Name'),
                    border: OutlineInputBorder(),

                    ///jab typing disable hogi tb
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.brown,
                      width: 3,
                    )
                    ),

                    ///jab click krke type krege
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 3,
                    )
                    ),

                    ///enable show krega, type kr skte ye nhe
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.redAccent,
                      width: 4,
                    )
                    )
                ),
              ),
            ),
          ),

          ///without Container
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Enter your email..',
                  label: Text('Email'),
                  border: OutlineInputBorder(),

                  //disabledBorder:

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 3,
                  )
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.redAccent,
                    width: 4,
                  )
                  )
              ),
            ),
          ),

          TextButton(
              onPressed: () {
                print('Print this ${nameController.text}');
              },
              child: Text('Press here Get value'))
        ],
      ),
    );
  }
}
