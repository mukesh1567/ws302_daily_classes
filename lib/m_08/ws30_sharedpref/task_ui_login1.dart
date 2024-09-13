import 'package:flutter/material.dart';

void main(){
  runApp(LAp308a());
}
class LAp308a extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LH308a(),
    );
  }
}
class LH308a extends StatelessWidget{

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /*appBar: AppBar(
        backgroundColor: Colors.indigo.shade100,
        title: Center(child: Text("LoginUI",style: TextStyle(fontSize: 28),)),
      ),*/

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 50,),

            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey,
                //color: Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(9)
                ),
              child: Icon(Icons.arrow_back_ios_new),
              ),

            SizedBox(height: 10,),

            Row(
              children: [
                Text("Create Account",
                style: TextStyle(
                  fontSize: 33,fontWeight: FontWeight.bold
                ),),
                
                Icon(Icons.waving_hand,size: 30,color: Color(0xffFFD04C),)
              ],
            ),

            SizedBox(height: 10,),
            
            Text("Please register on your streamline,where you can continue using our service.",
            style: TextStyle(fontSize: 18,color: Color(0xff959595)
            ),),

            SizedBox(height: 18,),

            Container(
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: -15,
                    offset: Offset(0, 20)
                  )
                ]
                ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: Text('Name'),
                      hintText: 'Enter your name',
                      border:InputBorder.none,
                    ),
                    ),
                ),
              ),

              ),

            SizedBox(height: 18,),

            Container(
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: -15,
                        offset: Offset(0, 20)
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      label: Text('Email'),
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),

                    ),
                  ),
                ),
              ),

            ),

            SizedBox(height: 18,),

            Container(
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: -15,
                        offset: Offset(0, 20)
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: Text('Password'),
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),

                    ),
                  ),
                ),
              ),

            ),

            SizedBox(height: 30,),

            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2,color: Colors.black)
                  ),
                ),

                SizedBox(width: 10,),

                Text("I agree to privacy policy & terms",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff9C9C9C),
                  decoration: TextDecoration.underline,
                ),)
              ],
            ),

            SizedBox(height: 35,),

            Container(
              width: double.infinity,
              height: 72,
              decoration: BoxDecoration(
                color: Color(0xffF26E56),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Text("Continue",
              style: TextStyle(color: Colors.white,fontSize: 22),)),
            ),

            SizedBox(height: 35,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color(0xff9C9C9C),
                  ),
                ),
                SizedBox(width: 10,),
                Text("Or",style: TextStyle(fontSize: 20,color: Color(0xff9C9C9C)),),
                SizedBox(width: 10,),
                Container(
                  height: 2,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Color(0xff9C9C9C),
                  ),
                )
                
              ],
            ),

            SizedBox(height: 35,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  width: 120,
                  height: 65,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1.5,color: Colors.black)
                  ),
                  child: Image.asset('assets/icons/pngwiom.png',),
                ),

                Container(
                  width: 120,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1.5,color: Colors.black)
                  ),
                  child: Icon(Icons.apple,size: 45,),
                ),

                Container(
                  width: 120,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1.5,color: Colors.black)
                  ),
                  child: Image.asset("assets/icons/pngwinfb.png"),
                ),
              ],
            ),

            SizedBox(height: 60,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",style: TextStyle(fontSize: 18),),

                Text("Sign in instead",style: TextStyle(fontSize: 18,decoration: TextDecoration.underline,color: Color(0xffF26E56)),),
              ],
            )



          ],
        ),
      ),
    );
  }
}