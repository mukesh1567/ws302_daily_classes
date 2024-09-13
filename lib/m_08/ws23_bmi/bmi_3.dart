import 'dart:math';

import 'package:flutter/material.dart';

class HomeBMIa extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomeBMIaState();
  }

}

class HomeBMIaState extends State<HomeBMIa>{

  TextEditingController wtController = TextEditingController();
  TextEditingController fthtController = TextEditingController();
  TextEditingController inhtController = TextEditingController();

  ///num bmi = 0.0;
  ///num? bmi;
  String? bmi;
  ///to print if else condition
  String? healthType;
  ///for background color change on result
  Color bgColor = Colors.deepOrange;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///for background color
      backgroundColor: bgColor,

      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(
          child: Text("BMI",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
        ),
      ),

      body:
      Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text("Calculate BMI",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),),

            SizedBox(height: 20,),

            TextField(
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

            SizedBox(height: 20,),

            TextField(
              controller: fthtController,

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

            SizedBox(height: 20,),

            TextField(
              controller: inhtController,

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

            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(onPressed: (){

                ///class calculate bmi
                calculateBMI();

              }, child: Text("Calculate",style: TextStyle(fontSize: 20),)),
            ),

            ///Text("$bmi",style: TextStyle(fontSize: 20),),
            ///Text("${bmi != 0.0 ? bmi : ""}",style: TextStyle(fontSize: 20),),
            
            Text('${bmi ?? ""}', style: TextStyle(fontSize: 25,
            ),),

            ///if want to change font color on result,
            ///comment background color and set (color: bgColor)

            Text('${healthType ?? ""}', style: TextStyle(fontSize: 25,
            ),),
            
            Container(
              width: 250,
              height: 250,
              child: Image.asset("assets/icons/pngegg (5).png",
              fit: BoxFit.cover,),
            )


          ],
        ),
      ),
    );
  }

  void calculateBMI(){

    double wt = double.parse(wtController.text.toString());
    double htFT = double.parse(fthtController.text.toString());
    double htIn = double.parse(inhtController.text.toString());

    ///1 ft = 12 inches
    num ht = (htFT*12) + htIn;

    ///1 inch = 0.0254
    num ht2 = (ht *  0.0254);

    double result = wt/(pow(ht2, 2));

    ///using if else, bmi is String, use 'var result'

    if(result<=18.4){
      healthType = "You are underweight";
      bgColor = Colors.yellowAccent;

    } else if( result>=18.5 && result<=24.9){
      healthType = "You are normal";
      bgColor = Colors.green;

    } else if (result >=25.0 && result<= 39.9){
      healthType = "You are Overweight";
      bgColor = Colors.deepOrange;

    } else if (result >=40.0){
      healthType = "You are obese";
      bgColor = Colors.red;

    };

    bmi = result.toStringAsFixed(2);

    // print('BMI<=18.4      You are underweight\nBMI=18.5-24.9  You are normal\n'
    //     'BMI=25.0-39.9  You are Overweight\nBMI>=40.0      You are obese');

    setState(() {

    });


  }

}