import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ws302_daily_classes/m09/ws11/notesapp_provider/add_pagenote11.dart';
import 'package:ws302_daily_classes/m09/ws11/notesapp_provider/dbhelper11.dart';

class DbProHo11 extends StatefulWidget{


  @override
  State<DbProHo11> createState() => _DbProHo11State();
}
///convert to stateful

class _DbProHo11State extends State<DbProHo11> {
  DBHelper dbHelper = DBHelper.getInstance();

  ///ui pr dikhane k liye list bnayge
  List<Map<String, dynamic>> allNotes = [];

  ///format for date and time
  DateFormat mFormat = DateFormat.yMd();


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
        title: Center(child: Text("AddNote dbHelper")),
      ),

      body:

      allNotes.isNotEmpty ? ListView.builder(
        ///agar allnote empty nhe h to listview show hoga nhe to..
        itemCount: allNotes.length,
          itemBuilder: (_,index){
            return ListTile(

              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),

                  ///showing time of addnote
                  Text(mFormat.format(DateTime.fromMillisecondsSinceEpoch(int.parse(allNotes[index][DBHelper.COLUMN_NOTE_CREATED]))),
                  ///Text(DateTime.fromMillisecondsSinceEpoch(int.parse(allNotes[index][DBHelper.COLUMN_NOTE_CREATED])).toString(),
                  style: TextStyle(fontSize: 10),)
                  //Text(allNotes[index][DBHelper.COLUMN_NOTE_CREATED])
                  ///showing error
                ],
              ),
              subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]),
              ///edit or delete k liye
              trailing:
              SizedBox(width: 100,
              child: Row(
                children: [
                  ///update ka kaam yaha
                  IconButton(
                      onPressed: () async{
                        ///jiska edit kr rhe, vo data show ho
                        var title = allNotes[index][DBHelper.COLUMN_NOTE_TITLE];
                        var desc = allNotes[index][DBHelper.COLUMN_NOTE_DESC];
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => AddNotPg(isUpdate: true,id: allNotes[index][DBHelper.COLUMN_NOTE_ID],title: title,desc: desc,)));

                        // showModalBottomSheet(context: context, builder: (_){
                        //   ///id: allNotes jisko b edit krna
                        //   return getBottomSheetUI(isUpdate: true,id: allNotes[index][DBHelper.COLUMN_NOTE_ID]);
                        // });


                  }, icon: Icon(Icons.edit)),

                  IconButton(onPressed: () async{
                    bool check = await dbHelper.deleteNote(id: allNotes[index][DBHelper.COLUMN_NOTE_ID]);
                    if (check){
                      getMyNotes();
                    }
                  }, icon: Icon(Icons.delete),color: Colors.red,),
                ],
              ),),
            );
          }) : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No Notes yet"),

            OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AddNotPg()));

              // showModalBottomSheet(
              //   isDismissible: false,
              //     enableDrag: false,
              //     context: context,
              //     builder: (_){
              //     return getBottomSheetUI();
              //     }
              //     );
            },
                child: Text("Add First Note")
            ),


          ],
        ),
      ),

      floatingActionButton: allNotes.isNotEmpty ? FloatingActionButton(
        ///FAB tbi show hoga jg empty nhe hoga nhe too null
          onPressed: () async{
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => AddNotPg()));

            // showModalBottomSheet(
            //   isDismissible: false,
            //     /// bhr click hone pr close nhe hoga
            //     enableDrag: false,
            //     ///drag krke niche krne pr close nhe hoga
            //     context: context, builder: (_){
            //   return getBottomSheetUI();
            // });
          },
        child: Icon(Icons.add),

      ) : null,
      /// nhe to null show hoga


    );
  }
  void getMyNotes() async{
    allNotes = await dbHelper.getAllNotes();
    setState(() {

    });
  }

}