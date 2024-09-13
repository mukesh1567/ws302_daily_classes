import 'package:flutter/material.dart';

void main(){
  runApp(NoteApp3008a());
}
class NoteApp3008a extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNota(),
    );
  }
}

class HomeNota extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252525),

      body:
      Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [

            SizedBox(height: 18,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("9:41",style: TextStyle(fontSize: 20,color: Colors.white),),

                Row(
                  children: [
                    Icon(Icons.network_cell_rounded,color: Colors.white,),
                    Icon(Icons.wifi,color: Colors.white,),
                    Icon(Icons.battery_4_bar,color: Colors.white,)
                  ],
                )

              ],
            ),

            SizedBox(height: 18,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notes",style: TextStyle(fontSize: 45,color: Colors.white),),

                Container(
                  width: 55,height: 55,decoration: BoxDecoration(color: Color(0xff3A3A3A),borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Icon(Icons.search,color: Colors.white,size: 40,)),
                )
              ],
            ),

            SizedBox(height: 18,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xffFFAB91),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text("How to make your personal brand stand out online",
                        style: TextStyle(fontSize: 22,),),

                        Text("May 21,2020",style: TextStyle(color: Color(0xffBA8574),fontSize: 20),)
                      ],
                    ),
                  ),
                ),

                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xffFFCC80),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text("Beautiful weather app UI concepts we wish existed",
                          style: TextStyle(fontSize: 22,),),

                        Text("Mar 18,2020",style: TextStyle(color: Color(0xffBA8574),fontSize: 20),)
                      ],
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 18,),

            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xffE6EE9B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("10 excellent font \npairing tools for \ndesigners",style: TextStyle(fontSize: 30),),

                    Text("Feb 01,2020",style: TextStyle(color: Color(0xff8A8E59),fontSize: 20),),

                  ],
                ),
              ),
            ),

            SizedBox(height: 18,),

            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 310,
                        decoration: BoxDecoration(
                          color: Color(0xff80DEEA),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Spotify's \nReema \nBhagat on product \ndesign, \nmusic, and \nthe key to a happy career",
                              style: TextStyle(
                                fontSize: 22
                              ),),
                              
                              Text("Feb 01,2020",style: TextStyle(color: Color(0xff498791),fontSize: 20),)
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 18,),

                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff80DEEA),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("eye-catching mobile wallpaper",
                                style: TextStyle(fontSize: 26),),

                              Text("Feb 01,2020",style: TextStyle(color: Color(0xff8E6396),fontSize: 20),)

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 205,
                        decoration: BoxDecoration(
                          color: Color(0xffCF93D9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("12 eye-catching mobile wallpaper",
                              style: TextStyle(fontSize: 25),),

                              Text("Feb 01,2020",style: TextStyle(color: Color(0xff8E6396),fontSize: 20),)

                            ],
                          ),
                        ),

                      ),

                      SizedBox(height: 18,),

                      Container(
                        height: 260,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xffF48FB1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Design For Good: Join The Face Mask Challenge",
                                style: TextStyle(fontSize: 28),),

                              Text("Feb 01,2020",style: TextStyle(color: Color(0xff8E6396),fontSize: 20),)

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}