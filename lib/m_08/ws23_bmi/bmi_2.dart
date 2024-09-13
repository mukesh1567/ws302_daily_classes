/*
import 'package:flutter/material.dart';

class HomeBMIa extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomeBMIaState();
  }

}

class HomeBMIaState extends State<HomeBMIa>{

  TextEditingController wtController = TextEditingController();
  TextEditingController htftController = TextEditingController();
  TextEditingController htinController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(
          child: Text("Calculate BMI",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
      ),

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: wtController,

              decoration: InputDecoration(
                label: Text('Weight (KG)'),
                hintText: "Enter weight in KGs",
                prefixIcon: Icon(Icons.line_weight),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.black,
                  )
                ),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black,
                      )
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: htftController,

              decoration: InputDecoration(
                  label: Text('Height(Ft)'),
                  hintText: "Enter height in Ft",
                  prefixIcon: Icon(Icons.height_outlined),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black,
                      )
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black,
                      )
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: htinController,

              decoration: InputDecoration(
                  label: Text('Height (In)'),
                  hintText: "Enter height in in",
                  prefixIcon: Icon(Icons.height_outlined),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black,
                      )
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black,
                      )
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: double.infinity,

              child: ElevatedButton(onPressed: (){

              }, child: Text("Calculate")),
            ),
          )

        ],
      ),

    );
  }
}*/
