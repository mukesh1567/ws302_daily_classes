import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws12_navigation/navi04_second.dart';

void main(){
  runApp(nviApp03());
}
class nviApp03 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nvi03Hom(),
    );
  }
}
class Nvi03Hom extends StatelessWidget{

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,

      appBar: AppBar(title: Center(child: Text("1st page Navig", style: TextStyle(fontSize: 28),)),
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
                  return SecondPg(name: nameController.text.toString(),);
                }));

                ///pushReplacement use krne se ???????/

                ///single line return

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