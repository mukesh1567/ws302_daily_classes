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

    });

  }

}
