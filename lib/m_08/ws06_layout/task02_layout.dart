import 'package:flutter/material.dart';

void main(){
  runApp(AntApp06b());
}

class AntApp06b extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task06bPage(),
    );
  }
}

class Task06bPage extends StatelessWidget{

  TextEditingController emailController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("Task 2",style: TextStyle(
          fontSize: 28,
        ),)),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff0B1B2B),
                  Colors.grey,
                ]
              ),

            ),

            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("9:41",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),
                
                    Row(
                      children: [
                        Icon(Icons.network_cell_outlined,color: Colors.white,),
                        Icon(Icons.wifi,color: Colors.white,),
                        Icon(Icons.battery_4_bar_sharp,color: Colors.white,),
                      ],
                    )
                
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sign in to your \nAccount",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),),

                        SizedBox(
                          height: 10,
                        ),

                        Text("Sign in to your Account",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),)

                      ],
                    ),
                  ),
                ),

                
              ],
            ),
            
            

          ),

          Container(
            width: double.infinity,
            height: 580,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      label: Text("Email"),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2
                        )
                      )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: pwController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.hide_source),
                        hintText: 'Enter your password',
                        label: Text("Password"),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 2
                            )
                        )
                    ),
                  ),
                ),

                Text('Forget Password?',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                ),),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xffC0E863),
                      borderRadius: BorderRadius.circular(15)
                    ),

                    child: Center(
                      child: Text('Login',
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 2,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey
                        )
                      ),
                    ),
                    
                    Text('Or login with',
                    style: TextStyle(
                      fontSize: 20
                    ),),

                    Container(
                      width: 120,
                      height: 2,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                        //color: Colors.indigo,
                        borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: Colors.black26
                          )
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://w7.pngwing.com/pngs/63/1016/png-transparent-google-logo-google-logo-g-suite-chrome-text-logo-chrome.png",
                          width: 30,
                          height: 30,),

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

                    Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                          //color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.black26
                        )
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook,
                          size: 40,),

                          SizedBox(
                            width: 5,
                          ),

                          Text("Facebook",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20
                          ),)


                        ],
                      ),

                    ),
                  ],
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