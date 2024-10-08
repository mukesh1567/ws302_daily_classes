/*
import 'package:database_302/db_helper.dart';
import 'package:flutter/widgets.dart';

class DBProvider extends ChangeNotifier {
  DBHelper dbHelper;

  DBProvider({required this.dbHelper});

  ///data
  List<Map<String, dynamic>> _mData = [];

  ///insert
  void addNote(
      {required String mTitle,
      required String mDesc,
      required String mCreatedAt}) async {
    bool check = await dbHelper.addNote(
        title: mTitle, desc: mDesc, createdAt: mCreatedAt);

    if (check) {
      _mData = await dbHelper.getAllNotes();
      notifyListeners();
    }
  }

  List<Map<String, dynamic>> getAllNotes() => _mData;

  ///fetch initial notes
  void getInitialNotes() async {
    _mData = await dbHelper.getAllNotes();
    notifyListeners();
  }

  ///update
  void updateNote(
      {required String mTitle,
      required String mDesc,
      required String mCreatedAt,
      required int id}) async {
    bool check = await dbHelper.updateNote(
        updatedTitle: mTitle,
        updatedDesc: mDesc,
        updatedAt: mCreatedAt,
        id: id);

    if(check){
      _mData = await dbHelper.getAllNotes();
      notifyListeners();
    }
  }

  ///update
  ///delete
}
*/
