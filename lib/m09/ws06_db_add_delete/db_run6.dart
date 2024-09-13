import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m09/ws06_db_add_delete/db_hom6.dart';

void main(){
  runApp(dbAp0609());
}

class dbAp0609 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DbHome6(),
    );
  }
}