import 'package:flutter/material.dart';

class Splsecond extends StatelessWidget {
  String name;

  Splsecond({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade200,
        appBar: AppBar(
          title: Center(child: Text("SecondPage")),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Welcome, $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                child: Text("Go Back"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        )

        //Center(child: Text("Second", style: TextStyle(fontSize: 28),)),

        );
  }
}
