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

class SpHo2908 extends StatefulWidget{

  ///convert Stateless to Stateless

  @override
  State<SpHo2908> createState() => _SpHo2908State();
}

class _SpHo2908State extends State<SpHo2908> {

  TextEditingController nameController = TextEditingController();
  String name_key ="name";

  SharedPreferences? prefs;
  String? name;

  @override
  void initState() {
    super.initState();

    ///here we put this
    ///ye par
    getValuePrefs();

  }

  @override
  Widget build(BuildContext context) {

    ///initialize krege
    ///getInstance is in Future
    ///prefs = SharedPreferences.getInstance(); show error, use await
    ///prefs = await SharedPreferences.getInstance(); it doesn't work
    ///make your own synchronous function

    ///build ke return hone se phle,
    ///(getValuePrefs();) krwana chahte to init krege

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade300,
        title: Center(
          child: Text("Task SharedPreference",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),

      body: Column(
        children: [

          ///get value here
          ///shared preference is used to get value here

          Center(
            child:
            name != null ? Text("Welcome,Your last entered value was: ${name ?? 'default'}",

      ///name != null ? Text("Welcome,Your last entered value was: ${name}",
      ///Text("Welcome,Your last entered value was: ${name ?? "default"}",
      ///Text("Welcome,Your last entered value was: name",

              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,

            ),) : Container(width: double.infinity,height: 100,color: Colors.red,),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                label: Text("Name"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3
                  )
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          ElevatedButton(onPressed: (){
            ///we will set value here to get it
            prefs!.setString(name_key, nameController.text);

            ///setbool,setInt etc etc

          }, child: Text("**SAVE**"))

        ],
      ),
      backgroundColor: Colors.greenAccent.shade100,
    );
  }

  void getValuePrefs() async{
    prefs = await SharedPreferences.getInstance();
    name = prefs!.getString(name_key);
    /// ! is used because it is no more null(?)
    /// getBool,getInt etc etc
    ///print(name);

    setState(() {

    });

  }
}