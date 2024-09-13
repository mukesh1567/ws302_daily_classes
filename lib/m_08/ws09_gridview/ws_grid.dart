import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
    {
      'name': 'Raman',
      'mobileNo': '9898989898',
      'color': Colors.blue,
    },
    {
      'name': 'Raghav',
      'mobileNo': '8787878787',
      'color': Colors.orange,
    },
    {
      'name': 'Ramesh',
      'mobileNo': '9988998899',
      'color': Colors.blueGrey,
    },
    {
      'name': 'Ramadheer',
      'mobileNo': '7657657657',
      'color': Colors.green,
    },
    {
      'name': 'Raghvendra',
      'mobileNo': '9999888800',
      'color': Colors.pink,
    },
    {
      'name': 'Riya',
      'mobileNo': '97898797890',
      'color': Colors.amber,
    },
    {
      'name': 'Rajeev',
      'mobileNo': '9192939495',
      'color': Colors.purple,
    },
    {'name': 'Bharat', 'mobileNo': '9273464374', 'color': Colors.yellow},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Grid'),
      ),


      body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: GridView.builder(
            itemCount: mData.length,
            itemBuilder: (c, i) {
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21)
                ),
                child: Container(
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${mData[i]['name']}',
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${mData[i]['mobileNo']}',
                          ),
                        ],
                      )),
                  decoration: BoxDecoration(
                      color: mData[i]['color'],
                      borderRadius: BorderRadius.circular(21)),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                childAspectRatio: 9 / 16),
          )

        /*GridView.count(
           // maxCrossAxisExtent: 100,
          crossAxisCount: 2,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
          childAspectRatio: 2/1,
          children: [
            Container(
              */ /*child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${mData[index]['name']}', style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('${mData[index]['mobileNo']}',),
                ],
              )),*/ /*
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(21)
              ),
            ),
            Container(
              width: 200,
              height: 150,
              */ /*child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${mData[index]['name']}', style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('${mData[index]['mobileNo']}',),
                ],
              )),*/ /*
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(21)
              ),
            ),
            Container(
              width: 200,
              height: 150,
              */ /*child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${mData[index]['name']}', style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('${mData[index]['mobileNo']}',),
                ],
              )),*/ /*
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(21)
              ),
            ),
            Container(

              width: 200,
              height: 150,
              */ /*child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${mData[index]['name']}', style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('${mData[index]['mobileNo']}',),
                ],
              )),*/ /*
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(21)
              ),
            ),
            Container(
              width: 200,
              height: 150,
              */ /*child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${mData[index]['name']}', style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('${mData[index]['mobileNo']}',),
                ],
              )),*/ /*
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(21)
              ),
            ),
          ],
        ),*/
      ),
    );
  }
}
