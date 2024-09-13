import 'package:flutter/material.dart';

void main(){
  runApp(WhtsAp08());
}
class WhtsAp08 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wtho08(),
    );
  }
}
class Wtho08 extends StatelessWidget{

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("WhatsApp",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.green
            ),),

            Row(
              children: [
                Icon(Icons.document_scanner_outlined,size: 30,),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.camera_enhance_outlined,size: 30,),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.menu_outlined,size: 30,),
              ],
            ),
          ],
        ),
      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Ask Meta AI or Search",
                  prefixIcon: Icon(Icons.circle_outlined,size: 30,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 4,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green.shade200,
                  ),
                  child: Center(
                    child: Text("All",
                    style: TextStyle(
                      fontSize: 18
                    ),),
                  ),
                ),

                SizedBox(
                  width: 10,
                ),

                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text("Unread",
                      style: TextStyle(
                          fontSize: 18,
                      ),),
                  ),
                ),

                SizedBox(
                  width: 10,
                ),

                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text("Favourities",
                      style: TextStyle(
                        fontSize: 18,
                      ),),
                  ),
                ),

                SizedBox(
                  width: 10,
                ),

                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text("Groups",
                      style: TextStyle(
                        fontSize: 18,
                      ),),
                  ),
                ),

              ],
            ),
          ),
          
          ListView.builder(
              itemBuilder: (context,index){
                return Container(

                );
              })

        ],
      ),
      
      // bottomNavigationBar: Row(
      //   children: [
      //     Container(
      //       child: Column(
      //         children: [
      //           Icon(Icons.chat),
      //
      //           Text("Chats")
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      
    );
  }
}