import 'package:flutter/material.dart';

void main() {
  runApp(AntApp06c());
}

class AntApp06c extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task06cPage(),
    );
  }
}

class Task06cPage extends StatelessWidget {

  TextEditingController fnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  TextEditingController rpwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "Task 3",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      body:
      Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              //width: double.infinity,
              //height: 280,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff0B1B2B),
                    Color(0xff0B1B2B),
                    Colors.black45,
                    Color(0xff0B1B2B),
                    Colors.black45,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "9:41",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.network_cell,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.wifi,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.battery_4_bar_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),

                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  ),

                  SizedBox(
                    height: 100,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),),

                          Text("Create your account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                          ),)

                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              //width: double.infinity,
              //height: 580,
              decoration: BoxDecoration(
                //color: Colors.amberAccent.shade100,
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: fnameController,
                      decoration: InputDecoration(
                        label: Text("Full Name"),
                        hintText: "Enter full name",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                        )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          label: Text("Email"),
                          hintText: "Enter your email",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
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
                          label: Text("Password"),
                          hintText: "Enter your password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: rpwController,
                      decoration: InputDecoration(
                          label: Text("Repeat Password"),
                          hintText: "Re-enter passowrd",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffB9DE61),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text("Register",
                        style: TextStyle(
                          fontSize: 20
                        ),),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 80,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I have an account?   ",
                      style: TextStyle(
                        fontSize: 20
                      ),),
                      
                      Text("Login",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20
                      ),)
                      
                    ],
                  )


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
