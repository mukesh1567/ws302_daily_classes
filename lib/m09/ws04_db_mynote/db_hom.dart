import 'package:ws302_daily_classes/m09/ws04_db_mynote/dbhelper.dart';
import 'package:flutter/material.dart';

class DbHome4 extends StatefulWidget{
  
  @override
  State<DbHome4> createState() => _DbHome4State();
}
///convert to stateful

class _DbHome4State extends State<DbHome4> {
  DBHelper dbHelper = DBHelper.getInstance();

  ///ui pr dikhane k liye list bnayge
  List<Map<String, dynamic>> allNotes = [];

  @override
  void initState() {
    super.initState();
    getMyNotes();
  }
  ///esse jitni bar add kr rhe, show nhe hoga

  @override
  Widget build(BuildContext context) {

    ///allNotes = await dbHelper.getAllNotes();
    ///async nhe bna skte es liye function bnayge

    ///getMyNotes(); take it to init

    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.brown.shade100,
        title: Center(child: Text("dbHelper")),
      ),

      body: ListView.builder(
        itemCount: allNotes.length,
          itemBuilder: (_,index){
            return ListTile(
              title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
              subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]),
            );
          }),

      floatingActionButton: FloatingActionButton(
          onPressed: () async{
            bool check = await dbHelper.addNote(
                title: "My note",
                desc: "Do whatever you want but not whatever");

            if(check){
              ///init k related, if check is true then
              getMyNotes();
            }
          },
        child: Icon(Icons.add),

      ),


    );
  }

  void getMyNotes() async{
    allNotes = await dbHelper.getAllNotes();
    setState(() {

    });

  }
}