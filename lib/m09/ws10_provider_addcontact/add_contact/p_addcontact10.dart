import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ws302_daily_classes/m09/ws10_provider_addcontact/add_contact/p_listmap_provider10.dart';


class AddContact10 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade200,
        title: Center(child: Text("Add Contact Home")),),

      body: Center(
        child: IconButton(
            onPressed: (){
              Provider.of<ListMapProvider>(context, listen: false).addMap({
                'name' : 'Alex',
                'mobNo' : '9898989898',
              });
            }, icon: Icon(Icons.add)),
      ),


    );
  }
}