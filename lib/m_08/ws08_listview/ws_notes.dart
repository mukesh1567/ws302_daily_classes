import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  List<Map<String, dynamic>> mData = [
    {
      'name':'Raman',
      'mobileNo':'9898989898',
      'color': Colors.blue,
    },
    {
      'name':'Raghav',
      'mobileNo':'8787878787',
      'color': Colors.orange,
    },
    {
      'name':'Ramesh',
      'mobileNo':'9988998899',
      'color': Colors.blueGrey,
    },
    {
      'name':'Ramadheer',
      'mobileNo':'7657657657',
      'color': Colors.green,
    },
    {
      'name':'Raghvendra',
      'mobileNo':'9999888800',
      'color': Colors.pink,
    },
    {
      'name':'Riya',
      'mobileNo':'97898797890',
      'color': Colors.amber,
    },
    {
      'name':'Rajeev',
      'mobileNo':'9192939495',
      'color': Colors.purple,
    },
    {
      'name':'Bharat',
      'mobileNo':'9273464374',
      'color': Colors.yellow
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),

      //500  //12

      body: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mData.length,
          itemBuilder: (_, index){
            return Container(
              margin: EdgeInsets.all(11),
              width: 200,
              height: 150,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${mData[index]['name']}', style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('${mData[index]['mobileNo']}',),
                ],
              )),
              decoration: BoxDecoration(
                  color: mData[index]['color'],
                  borderRadius: BorderRadius.circular(21)
              ),
            );
          },
        ),
      ),
    );
  }
}