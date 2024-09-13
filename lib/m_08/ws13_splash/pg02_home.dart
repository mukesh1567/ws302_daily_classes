import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws13_splash/pg03_second.dart';


class home1308 extends StatelessWidget{

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,

      appBar: AppBar(title:
      Center(child:
      Text("HomePage", style: TextStyle(fontSize: 28),)),
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
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 3
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 3
                      )
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return Splsecond(name: nameController.text.toString(),);
                }));


                // Navigator.push(context, MaterialPageRoute(builder: (_) => SecondPg(name: nameController.text.toString(),))
                // );

              }, child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}