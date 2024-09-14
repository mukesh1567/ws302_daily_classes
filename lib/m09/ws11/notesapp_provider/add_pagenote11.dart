import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m09/ws11/notesapp_provider/db_provider11.dart';
import 'package:ws302_daily_classes/m09/ws11/notesapp_provider/dbhelper11.dart';

class AddNotPg extends StatelessWidget {

  bool isUpdate;
  int id;
  String title;
  String desc;
  DBHelper dbHelper = DBHelper.getInstance();
  TextEditingController titleController = TextEditingController();
  TextEditingController  descController = TextEditingController();

  AddNotPg({this.isUpdate = false,this.id = 0, this.title= "",this.desc = ''});

  @override
  Widget build(BuildContext context) {

    if(isUpdate){
      titleController.text = title;
      descController.text = desc;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("AddNote"),
      ),

      body: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        child: Column(
          children: [
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
                  child: OutlinedButton(
                      onPressed: () async{
                        if (titleController .text.isNotEmpty && descController.text.isNotEmpty) {

                          bool check = false;
                          if (isUpdate){
                            check = await dbHelper.updateNote(
                                updatedTitle: titleController.text,
                                updatedDesc: descController.text,
                                updatedCreate: DateTime.now().millisecondsSinceEpoch.toString(),
                                id: id);
                          } else {
                            context.read<DBProvider>().addNote(mTitle: titleController.text,
                              mDesc: descController.text,
                              mCreatedAt: DateTime.now().millisecondsSinceEpoch.toString(),);
                          }
                        }
                      }, child: Text(isUpdate ? "Update" : "Add")),
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
      ),

    );
  }


}
