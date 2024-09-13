import 'package:flutter/material.dart';

void main(){
  runApp(AntApp());
}

class AntApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task06aPage(),
    );
  }
}

class Task06aPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text('Task1',style: TextStyle(
            fontSize: 28,
          ),),
        ),
      ),
      body:
      Column(
        children: [
          Container(
            width: double.infinity,
            height: 420,
          decoration: BoxDecoration(

            color: Color(0xff0B1B2B),

              // image: DecorationImage(
              //   fit: BoxFit.fill,
              //   image: AssetImage('assets/images/onepl.jpg'))

            ),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('9:41',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),

                    Row(
                      children: [
                        Icon(Icons.network_cell,color: Colors.white,),
                        Icon(Icons.network_wifi,color: Colors.white,),
                        Icon(Icons.battery_4_bar_sharp,color: Colors.white,),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text('Welcome to Maxlearn', style: TextStyle(
                      color: Colors.white,
                    ),),

                    Icon(Icons.star,color: Color(0xffF2D543),)
                  ],
                ),

                SizedBox(
                  height: 150,
                ),
                
                Container(
                  width: 400,
                    height: 100,
                    //color: Colors.brown,

                    child: Text("Let's upgrade your learning experience",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                ),
                    )
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  width: 400,
                  height: 50,
                  //color: Colors.pink,

                  child: Text("Changing the way poeple learn by providing an interactive,engaging,and personalized learnig.",
                  style: TextStyle(
                    color: Colors.white,

                  ),
                  ),
                )
              ],
            ),
          ),

          ///lower part, container
          Container(
            width: double.infinity,
            height: 420,
            decoration: BoxDecoration(
              //color: Colors.grey,
            ),

            child: Column(
              children: [

                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                  width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffC0E863),
                      borderRadius: BorderRadius.circular(15)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone_android_sharp,
                        size: 30,),

                        SizedBox(
                          width: 8,
                        ),

                        Text("Continue with number",
                        style: TextStyle(
                          fontSize: 20,
                        ),)

                      ],
                    ),



                  ),
                ),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       width: 100,
                       height: 2,
                       decoration: BoxDecoration(
                           border: Border.all(
                             color: Colors.blueGrey
                           )),
                     ),

                     Text('Or login with',
                     style: TextStyle(
                       fontSize: 22
                     ),),

                     Container(
                       width: 100,
                       height: 2,
                       decoration: BoxDecoration(
                           border: Border.all(
                               color: Colors.blueGrey
                           )),
                     ),

                   ],

                 ),
               ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey
                        )
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://w7.pngwing.com/pngs/63/1016/png-transparent-google-logo-google-logo-g-suite-chrome-text-logo-chrome.png",
                          height: 25,
                          width: 25,),

                          SizedBox(
                            width: 5,
                          ),

                          Text("Google",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                          ),)
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Image.asset("assets/icons/icons8-facebook-48.png",),

                          Icon(Icons.facebook,
                          size: 25,),

                          Text("Facebook",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20
                          ),)

                        ],
                      ),
                      
                    )
                  ],
                ),

                SizedBox(
                  height: 130,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have a account?  ",
                    style: TextStyle(
                      fontSize: 20,
                    ),),

                    Text("Register",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green
                      ),)
                  ],
                ),




              ],
            ),
          ),
        ],
      ),
    );
  }
}