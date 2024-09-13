import 'package:flutter/material.dart';

void main(){
  runApp(LAp308b());
}
class LAp308b extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LH308b(),
    );
  }
}
class LH308b extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.indigo.shade100,
        title: Center(child: Text("LoginUI2",style: TextStyle(fontSize: 28),)),
      ),

      body:

      Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Row(
                children: [

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        //borderRadius: BorderRadius.circular(15),
                        color: Colors.red
                    ),
                      child: Image.asset("assets/icons/icon_boy1.jpg")
                  ),

                  SizedBox(width: 15,),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Hi Bruce",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                            
                            Icon(Icons.waving_hand,size: 28,color: Color(0xffFFCF49),)
                          ],
                        ),
                    
                        Text("Your daily adventure starts now",style: TextStyle(color: Color(0xff777777)),)
                      ],
                    ),
                  ),


                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffEDEDED),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.grid_view,size: 38,),
                  )
                ],
              ),
            ),

            SizedBox(height: 12,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  width: 180,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff5694F2)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff4D85DA),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.screen_rotation_alt,size: 28,color: Colors.white,),
                      ),

                      SizedBox(width: 10,),

                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("On going",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                          Text("24 Tasks",style: TextStyle(fontSize: 15,color: Colors.black26),),

                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  width: 180,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFEC347)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffE5AF40),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.watch_later_outlined,size: 28,color: Colors.white,),
                      ),

                      SizedBox(width: 10,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("In process",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                          Text("12 Tasks",style: TextStyle(fontSize: 15,color: Colors.black26),),

                        ],
                      )
                    ],
                  ),
                ),


              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  width: 180,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff53C2C5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff4BAFB1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.task,size: 28,color: Colors.white,),
                      ),

                      SizedBox(width: 10,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Completed",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                          Text("42 Tasks",style: TextStyle(fontSize: 15,color: Colors.black26),),

                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  width: 180,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF26E56)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffDA634D),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.cancel,size: 28,color: Colors.white,),
                      ),

                      SizedBox(width: 10,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Canceled",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                          Text("8 Tasks",style: TextStyle(fontSize: 15,color: Colors.black38),),

                        ],
                      )
                    ],
                  ),
                ),


              ],
            ),

            SizedBox(height: 20,),

            Text("Recent Task",
              style: TextStyle(fontSize: 23),)

          ],
        ),
      ),


    );
  }
}