import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: SweepGradient(
                        colors: [
                          Colors.purple,
                          Colors.red,
                        ]
                    )

                  /*RadialGradient(
                    //focal: Alignment.topCenter,
                    center: Alignment.center,
                    focalRadius: 0.5,
                    radius: 0.9,
                    colors: [
                      Colors.purple,
                      Colors.red,

                    ]
                )*/

                  /*LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  //stops: [0.2,1],
                  colors: [
                    Color(0xff4facfe),
                    Color(0xff00f2fe),

                  ]
                )*/
                ),
              ),
            ),
            /*Center(
            child: Container(
              width: 290,
              height: 290,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              )
            ),
          ),*/
          ],
        )

      /*Stack(
        children: [
          Container(
            color: Colors.amber,
          ),

            Positioned(
              bottom: 11,
              right: 11,
              child: Container(
                //margin: EdgeInsets.only(top: 600, left: 200),
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 34),
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),*/
    );
  }
}
