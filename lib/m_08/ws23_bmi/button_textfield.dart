import 'package:flutter/material.dart';

void main() {
  runApp(Demo2308());
}

class Demo2308 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoH2308(),
    );
  }
}

class DemoH2308 extends StatefulWidget {
  @override
  State<DemoH2308> createState() => _DemoH2308State();
}

class _DemoH2308State extends State<DemoH2308> {

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

          child: isTextFieldVisible ?
          TextField()
              : ElevatedButton(
                  onPressed: () {
                    isTextFieldVisible = true;

                    setState(() {

                    });

                    print("hello universe");
                  },
              child: Text("Tap Here", style: TextStyle(fontSize: 25),
                  )),


        ),
      ),
    );
  }
}
