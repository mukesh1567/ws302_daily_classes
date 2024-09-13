import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(spcAp());
}

class spcAp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: spcHom(),
    );
  }
}

class spcHom extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => spcolrState();
}
class spcolrState extends State<spcHom>{

  TextEditingController nameController = TextEditingController();

  SharedPreferences? prefs;
  String? name;
  String nam_ky = 'name';

  int count = 0;
  String count_ky = 'count';

  @override
  void initState() {
    super.initState();
    getValuePref();
  }

  Color getBgColor(){
    return Colors.primaries[Random().nextInt(Colors.primaries.length-1)];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: count%2==0 ? getBgColor() : Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.cyanAccent.shade100,
        title: Center(child: Text("SP colors",style: TextStyle(fontSize: 28),)),
      ),

      body: Column(
        children: [

          Text('welcome,your \nlast input : ${name ?? "default"}',
          style: TextStyle(fontSize: 28),),

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                label: Text("name"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                  )
                )
              ),
            ),
          ),

          SizedBox(height: 10,),
          
          // Text("$count",style: TextStyle(fontSize: 25),),
          count != 0 ? Text("$count",style: TextStyle(fontSize: 28),): Container(height: 200,width: 200,color: Colors.greenAccent,),

          SizedBox(height: 10,),

          ElevatedButton(onPressed: (){
            ///set
            prefs!.setString(nam_ky, nameController.text);

          }, child: Text("SAVE"))

        ],
      ),
    );
  }

  void getValuePref() async{
    prefs = await SharedPreferences.getInstance();
    name = prefs!.getString(nam_ky);

    count = prefs!.getInt(count_ky) ?? 0;
    count++;
    prefs!.setInt(count_ky, count);

    setState(() {

    });

  }

}