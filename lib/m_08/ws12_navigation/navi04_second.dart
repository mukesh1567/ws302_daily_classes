import 'package:flutter/material.dart';

class SecondPg extends StatelessWidget{

  String name;
  SecondPg({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.amber.shade200,

      appBar: AppBar(title: Center(child: Text("2nd Page Navig")),),

      ///appBar hata dene se backbutton nhe show hoga
        ///khud se appBar design kr skte hai jisme backbutton nhe hoga
        ///pr aisa krna nhe hai

      body: Center(
        child: Column(
          children: [

            ///yaha constructor use krege, input ko print k liye

            Text("Welcome, $name", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),

            ElevatedButton(

              child: Text("Go Back"),

              onPressed: (){

                ///canPop check krega ki vpis page pr ja skte ya nhe

                if(Navigator.canPop(context)){
                  Navigator.pop(context);
                }

                //Navigator.pop(context);

              },
            ),
          ],
        ),
      )


      //Center(child: Text("Second", style: TextStyle(fontSize: 28),)),


    );
  }
}