import 'package:flutter/material.dart';

class Sec1408 extends StatelessWidget{

  // String name;
  // Sec1408({required this.name});
  ///namesRoute use krne ki vjh se esko use nhe kr skte

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade200,
        appBar: AppBar(title: Center(child: Text("SecondPage")),),
        body: Center(
          child: Column(
            children: [
              //Text("Welcome, $name", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
              ///ye b error show krega initialRoute ki vjh se

              Text("Welcome, defalut",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold),),

              ElevatedButton(
                child: Text("Go Back"),
                onPressed: (){
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