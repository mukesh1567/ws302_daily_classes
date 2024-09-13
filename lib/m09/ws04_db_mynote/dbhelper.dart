import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{

  ///singleton class
  ///1 creating a private constructor
  DBHelper._();

  ///2 globally distribute
  static DBHelper getInstance() => DBHelper._();

  ///getDB

  Database? mDB;

  ///creating globlal variable
  static final TABLE_NOTE_NAME = "name";
  static final COLUMN_NOTE_ID = "note_id";
  static final COLUMN_NOTE_TITLE = "note_title";
  static final COLUMN_NOTE_DESC = "note_desc";


  Future<Database> getDB() async{
    ///value future mein aa rhi to async or await use kia

    if(mDB!=null){
      return mDB!;
      ///agar mDB null h to upr Database ko bhej dega
    } else {
      mDB = await openDB();
      return mDB!;
      ///nhe to open kr dega mDB ko
    }
  }

  Future <Database> openDB() async{

    ///database error why? (mdb = openDB) mein direct DB nhe milega,
    ///parallel mein process chalana pdega
    ///DB ko Future mein kr denge
    ///fer upr openDB , Database getdb sbko async,future krna pdega

    ///agar open hoga to kaha hoga,getApplicationDocDir pe

    var appDir = await getApplicationDocumentsDirectory();
    var dbPath = join(appDir.path, "notes.db");

    ///database ka data table mein save hoga
    return openDatabase(dbPath, version: 1,onCreate: (db, version){

      ///create all your table here
      ///spacing and naming ka dhyn rkhna h
      db.execute("create table $TABLE_NOTE_NAME ( $COLUMN_NOTE_ID integer primary key autoincrement, $COLUMN_NOTE_TITLE text, $COLUMN_NOTE_DESC text)");

    });

  }

  ///db function(quaries create krege yaha)(insertion kr rhe)
  Future<bool> addNote({required String title, required String desc}) async{
    ///void addNote({required String title, required String desc}) async{
    Database db = await getDB();

    int rowsEffected = await db.insert(TABLE_NOTE_NAME, {
      ///COLUMN_NOTE_ID : id not given becoz autoincrement
      COLUMN_NOTE_TITLE : title,
      COLUMN_NOTE_DESC : desc,
    });
    ///queries se effect kya hua
    return rowsEffected>0;

  }

  Future<List<Map<String, dynamic>>> getAllNotes() async{
    ///  void getAllNotes() async{ (change it)
    var db = await getDB();

    //db.query(TABLE_NOTE_NAME,where: );
    //db.query(TABLE_NOTE_NAME, columns: );
    List<Map<String,dynamic>> mData = await db.query(TABLE_NOTE_NAME);

    return mData;
  }

}
