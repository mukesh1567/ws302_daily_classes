import 'package:flutter/material.dart';

class MovieWidget2708 extends StatelessWidget {
  String imgPath;
  double mHeight;
  double mWidth;
  bool isNetflixLogo;
  bool isRecentlyAdded;
  bool isTop10;

  MovieWidget2708({
    required this.imgPath,
    this.mHeight = 200,
    this.mWidth = 100,
    this.isNetflixLogo = false,
    this.isRecentlyAdded = false,
    this.isTop10 = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      ///sized box convert into container
      ///also give margin here not in stack container

      margin: EdgeInsets.symmetric(horizontal: 6),
      width: mWidth,
      height: mHeight,
      child: Stack(
        children: [
          Container(
            ///margin: EdgeInsets.symmetric(horizontal: 6),
            width: mWidth,
            height: mHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),


          isNetflixLogo ? Image.asset("assets/images/bg_netf1.png",
                  width: 50, height: 30,
                ) : Container(),


          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 100,
              child: Text("Recently Added",
                textAlign: TextAlign.center,

                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
            ),
          ),


          Align(
            alignment: Alignment.topRight,
            child: Container(
              //width: 30,
              child: Text("Top \n 10",
                textAlign: TextAlign.center,

                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
            ),
          ),

        ],
      ),
    );
  }
}
