import 'package:flutter/material.dart';

void main() {
  runApp(NoteApp3008());
}

class NoteApp3008 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNote(),
    );
  }
}

class HomeNote extends StatelessWidget {
  List<String> keyPd = [
    'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff252525),

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        )),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Color(0xff3B3B3B),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  )),
                ),
                Container(
                  width: 140,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xff3B3B3B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Title",
              style: TextStyle(color: Colors.grey, fontSize: 45),
            ),
          ),

          SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Type something...",
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
          ),

          SizedBox(
            height: 200,
          ),

          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
            ),

            child: ListView.builder(
              itemCount: keyPd.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 35,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey, borderRadius: BorderRadius.circular(7)),
                      child: Center(
                          child: Text(keyPd[index],
                            style: TextStyle(color: Colors.white,fontSize: 30,
                            ),
                          )),
                    ),
                  );

                }),
          ),
        ],
      ),
    );
  }
}
