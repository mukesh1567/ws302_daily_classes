import 'package:flutter/material.dart';

class Ho1408 extends StatelessWidget {

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(
            child: Text(
          "HomePage",
          style: TextStyle(fontSize: 28),
        )),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter your Name",
                  label: Text('Name'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,

                    )
                  )
                ),
              ),
            ),

            TextButton(
              onPressed: (){
            ///Navigator.push(context, MaterialPageRoute(builder: ()));
                Navigator.pushNamed(context, '/Sec1408');

              }, child: Text("Press"),
            ),
          ],
        ),
      ),
    );
  }
}
