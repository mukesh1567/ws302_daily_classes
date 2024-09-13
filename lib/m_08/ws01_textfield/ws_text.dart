/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ///set
    //nameController.text = "Hello";

    return Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(11),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                obscuringCharacter: "*",
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name..',
                  label: Text('Name'),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(11),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your name..',
                  label: Text('Name'),
                  border: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black12
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  ///get
                  print('Name entered is ${nameController.text}');
                },
                child: Text('Get Value'))
          ],
        ));
  }
}
*/
