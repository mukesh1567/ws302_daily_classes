import 'package:flutter/material.dart';

void main(){
  runApp(GrA04());
}

class GrA04 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: gri04(),
    );
  }
}
class gri04 extends StatelessWidget{

  List<Map<String, dynamic>> mData = [
    {'name' : 'alex',
      'color' : Colors.deepOrange,
      'mobileNo' : '9874567897'},
    {'name' : 'bella',
      'color' : Colors.amberAccent,
      'mobileNo' : '9878529635'},
    {'name' : 'clark',
      'color' : Colors.pink,
      'mobileNo' : '9896549877'},
    {'name' : 'danny',
      'color' : Colors.purple,
      'mobileNo' : '9894567897'},
    {'name' : 'eliza',
      'color' : Colors.red,
      'mobileNo' : '9898529635'},
    {'name' : 'feuna',
      'color' : Colors.greenAccent,
      'mobileNo' : '7856549877'},
    {'name' : 'glaxy',
      'color' : Colors.indigo,
      'mobileNo' : '7684567897'},
    {'name' : 'harry',
      'color' : Colors.brown,
      'mobileNo' : '9858529635'},
    {'name' : 'iconike',
      'color' : Colors.greenAccent,
      'mobileNo' : '9986549877'},
    {'name' : 'jerry',
      'color' : Colors.grey,
      'mobileNo' : '9964567897'},
    {'name' : 'klara',
      'color' : Colors.yellow,
      'mobileNo' : '9978529635'},
    {'name' : 'leonids',
      'color' : Colors.green,
      'mobileNo' : '9896549877'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(
          child: Text("GridView Builder",
            style: TextStyle(
                fontSize: 28
            ),),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: GridView.builder(
          itemCount: mData.length,

          itemBuilder: (c , i){
            return Container(
              width: 250,
              height: 150,

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${mData[i]['name']}",
                    style: TextStyle(
                      fontSize: 20,
                    ),),

                    Text("${mData[i]['mobileNo']}",
                      style: TextStyle(
                        fontSize: 20,
                      ),),

                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: mData[i]['color'],
                  borderRadius: BorderRadius.circular(10)
              ),
            );
          },

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 2/3,
          ),

        ),
      ),
    );
  }
}