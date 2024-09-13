import 'package:flutter/material.dart';

void main(){
  runApp(UrApp31a());
}

class UrApp31a extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageImag31(),
    );
  }
}

class PageImag31 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Center(
            child: Text('Images Page31',
            style:
              TextStyle(
              fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'cursiveFont'
            ),
            )
        ),
      ),
      body:
      Container(
        ///container apne aap mein ek widget h, eske andr image decoration k liye use ho rrha
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.brown,
          //borderRadius: BorderRadius.circular(10),

          image: DecorationImage(
            //fit: BoxFit.fill,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/image_flower.jpg'),
            ///image provider chahiye tb Asset, Network phle aajega

          )
        ),
      ),
    );
  }
}