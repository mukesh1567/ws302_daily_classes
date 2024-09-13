import 'package:flutter/material.dart';

void main(){
  runApp(List02());
}
class List02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Lt02build(),
    );
  }
}
class Lt02build extends StatelessWidget{

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
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text("ListView Builder",
          style: TextStyle(
            fontSize: 28,
          ),),
        ),
      ),
      
      body: ListView.builder(
        itemCount: mData.length,
        ///content kitne render honge, item count
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${mData[index]['name']}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),

                  Text("${mData[index]['mobileNo']}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),

              decoration: BoxDecoration(
                color: mData[index]['color'],
                borderRadius: BorderRadius.circular(12)
              ),
            );
          }
          ),
    );
  }
}