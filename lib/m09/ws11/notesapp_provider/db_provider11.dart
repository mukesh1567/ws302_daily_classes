import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m09/ws11/notesapp_provider/dbhelper11.dart';


class DBProvider extends ChangeNotifier{
  DBHelper dbHelper;
  DBProvider({required this.dbHelper})

  ///data
  List<Map<String,dynamic>> _mData = [];

  ///insert ya addData function
  void addNote(String mTitle, String mDesc){
    dbHelper.addNote(title: title, desc: desc,createdAt: createdAt);

  }



}