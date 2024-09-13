import 'package:ws302_daily_classes/m09/ws05_db_addnote_edit/dbhelper5.dart';
import 'package:flutter/material.dart';

class DbHome5 extends StatefulWidget{
  
  @override
  State<DbHome5> createState() => _DbHome5State();
}
///convert to stateful

class _DbHome5State extends State<DbHome5> {
  DBHelper dbHelper = DBHelper.getInstance();
  
  TextEditingController titleController = TextEditingController();
  TextEditingController  descController = TextEditingController();

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
        title: Center(child: Text("AddNote dbHelper")),
      ),

      body: 
      
      allNotes.isNotEmpty ? ListView.builder(
        ///agar allnote empty nhe h to listview show hoga nhe to..
        itemCount: allNotes.length,
          itemBuilder: (_,index){
            return ListTile(
              title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
              subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]),
              ///edit pr delete k liye
              trailing:
              SizedBox(width: 100,
              child: Row(
                children: [
                  IconButton(onPressed: () async{
                    ///dbhelper vala function yaha use krege
                    bool check = await dbHelper.updateNote(
                        updatedTitle: "Updated Note",
                        updatedDesc: "Updated Desc",
                        id: allNotes[index][DBHelper.COLUMN_NOTE_ID]);

                    if(check){
                      getMyNotes();
                    }

                  }, icon: Icon(Icons.edit)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.red,),
                ],
              ),),
            );
          }) : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No Notes yet"),

            OutlinedButton(onPressed: (){
              showModalBottomSheet(
                isDismissible: false,
                  enableDrag: false,
                  context: context,
                  builder: (_){
                  return getBottomSheetUI();
                  }
                  );
            },
                child: Text("Add First Note")
            ),


          ],
        ),
      ),

      floatingActionButton: allNotes.isNotEmpty ? FloatingActionButton(
        ///FAB tbi show hoga jg empty nhe hoga nhe too null
          onPressed: () async{
            ///add click krne pr clear hojega
            titleController.clear();
            descController.clear();
            ///user se input lena hai, esko hide kr dia
            // bool check = await dbHelper.addNote(title: "My note",
            //     desc: "Do whatever you want but not whatever");
            // if(check){
            //   ///init k related, if check is true then
            //   getMyNotes();}
            
            showModalBottomSheet(
              isDismissible: false,///
                /// bhr click hone pr close nhe hoga
                enableDrag: false,
                ///drag krke niche krne pr close nhe hoga
                context: context, builder: (_){
              return getBottomSheetUI();
            });
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

  ///widget create kr rhe taki bar bar code na likhna pde
  Widget getBottomSheetUI(){
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        children: [
          Text("Add Note", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),),

          SizedBox(height: 12,),

          TextField(
            controller: titleController,
            decoration: InputDecoration(
                label: Text("Title"),
                hintText: "Enter title here..",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(11)
                )
            ),
          ),

          SizedBox(height: 12,),

          TextField(
            controller: descController,
            minLines: 2,
            maxLines: 3,
            decoration: InputDecoration(
                label: Text("Description"),
                hintText: "Enter description here..",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(11)
                )
            ),
          ),

          SizedBox(height: 12,),


          Row(
            children: [
              Expanded(
                child: OutlinedButton(onPressed: () async{

                  if (titleController .text.isNotEmpty && descController.text.isNotEmpty) {
                    bool check = await dbHelper.addNote(
                        title: titleController.text,
                        desc: descController.text);
                    ///title desc empty nhe hoga to add hoga,
                    ///actual m add hoga to (bool,check,async use krege)

                    if(check){
                      getMyNotes();
                      Navigator.pop(context);
                    }

                  }
                }, child: Text("Add")),
              ),

              SizedBox(width: 12,),

              Expanded(
                child: OutlinedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancel")),
              )
            ],
          )

        ],
      ),
    );
  }
}