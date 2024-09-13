import 'package:flutter/material.dart';

void main() {
  runApp(Demo2308c());
}

class Demo2308c extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoH2308c(),
    );
  }
}

class DemoH2308c extends StatefulWidget {
  @override
  State<DemoH2308c> createState() => DemoH2308cState();
}

class DemoH2308cState extends State<DemoH2308c> {

  TextEditingController nameController = TextEditingController();
  bool isTextFieldVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Center(
          child: Text(
            "Button to Textfield",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 150,
          decoration: BoxDecoration(color: Colors.grey),

          child: Column(
            children: [

              SizedBox(
                height: 30,
              ),

              isTextFieldVisible ?
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.black,
                      )
                    )
                  ),
                ),
              )
                  : ElevatedButton(
                      onPressed: () {
                        isTextFieldVisible = true;

                        setState(() {

                        });

                        print("hello universe");
                      },
                  child: Text("Tap Here", style: TextStyle(fontSize: 25),
                      )),

            ],
          ),


        ),
      ),
    );
  }
}
