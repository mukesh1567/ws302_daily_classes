import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(bmiAp0508());
}

class bmiAp0508 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bmiHo58(),
    );
  }
}

class bmiHo58 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.indigo.shade200,
      //   title: Center(
      //       child: Text(
      //     "Task BMI UI",
      //     style: TextStyle(
      //         fontSize: 28,
      //         fontWeight: FontWeight.bold,
      //     ),
      //   )),
      // ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Icon(
            Icons.keyboard_backspace,
            size: 45,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'YOUR RESULT',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '19',
                        style: TextStyle(
                            fontSize: 70, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        CupertinoIcons.question_circle,
                        size: 22,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "YOU ARE IN GREAT SHAPE",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gender',
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Female',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  CupertinoIcons.arrowtriangle_down_fill,
                                  size: 15,
                                )
                              ],
                            ),
                            Container(
                              width: 150,
                              height: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              '22',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 150,
                              height: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '170',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'cm',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Icon(
                                      CupertinoIcons.arrowtriangle_down_fill,
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: 150,
                              height: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '58',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'kg',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Icon(
                                      CupertinoIcons.arrowtriangle_down_fill,
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: 150,
                              height: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Container(
                      width: 400,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        'CALCULATE',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              )),
        ],
      ),

      backgroundColor: Colors.green.shade200,
    );
  }
}
