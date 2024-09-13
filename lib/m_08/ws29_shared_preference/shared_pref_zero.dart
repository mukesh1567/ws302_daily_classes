/*
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(SPApp2908());
}

class SPApp2908 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpHo2908(),
    );
  }
}

class SpHo2908 extends StatelessWidget{

///make it stateful


  TextEditingController nameController = TextEditingController();
  SharedPreferences? prefs;
  String? name;


  @override
  Widget build(BuildContext context) {

    ///initialize krege
    ///getInstance is in Future
    ///prefs = SharedPreferences.getInstance(); show error, use await
    ///prefs = await SharedPreferences.getInstance(); it doesn't work
    ///make your own synchronous function

    getValuePrefs();



    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Shared Preference",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        backgroundColor: Colors.cyan.shade300,
      ),

      body: Column(
        children: [

          ///get value here
          ///shared preference is used to get value here

          Center(
            child:
            name != null ? Text("Welcome,\nYour last entered value \nwas: ${name}",

              ///Text("Welcome,\nYour last entered value \nwas: ${name ?? "default"}",
              ///child: Text("Welcome,\nYour last entered value \nwas: name",

              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,

              ),) : Container(),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                label: Text("Name"),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          ElevatedButton(onPressed: (){
            ///we will set value here to get it
            prefs!.setString("name", nameController.text);

            ///setbool,setInt etc etc


          }, child: Text("Press Here}"))

        ],
      ),
      backgroundColor: Colors.greenAccent.shade100,
    );
  }

  void getValuePrefs() async{
    prefs = await SharedPreferences.getInstance();
    name = prefs!.getString("name");
    /// ! is used because it is no more null(?)
    /// getBool,getInt etc etc

    ///setState use krne k liye Stateful bnana pdega

  }

}*/
