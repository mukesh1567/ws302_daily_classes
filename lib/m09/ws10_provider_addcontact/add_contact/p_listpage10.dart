import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ws302_daily_classes/m09/ws10_provider_addcontact/add_contact/p_addcontact10.dart';
import 'package:ws302_daily_classes/m09/ws10_provider_addcontact/add_contact/p_listmap_provider10.dart';

class ListPage10 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("ListData pro")),),

      body: Consumer<ListMapProvider>(
          ///builder: (_, provider, __){
          builder: (ctx, provider, __){
        ///var allContacts = provider.getListData();
        ///var allContacts = Provider.of<ListMapProvider>(ctx).getListData();
            var allContacts = ctx.watch<ListMapProvider>().getListData();
            ///use of watch for listen true
        return allContacts.isNotEmpty ? ListView.builder(
            itemCount: allContacts.length,
            itemBuilder: (_, index){
              return ListTile(
                title: Text(allContacts[index]['name']),
                subtitle: Text(allContacts[index]['mobNo']),
                trailing: SizedBox(
                  width: 110,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        provider.updateMap({
                          ///ctx.read<ListMapProvider>().updateMap({
                          ///context.read<ListMapProvider>().updateMap({
                          'name' : 'clark',
                          'mobNo' : '6767676767'
                        }, index);

                      }, icon: Icon(Icons.edit),
                      ),

                      IconButton(onPressed: (){
                        provider.deleteMap(index);
                      }, icon: Icon(Icons.delete,color: Colors.red,)
                      ),

                    ],
                  ),
                ),
              );
            }) : Center(child: Text("No Contacts yet!!"),);
      }),
    floatingActionButton: FloatingActionButton(
    onPressed: (){
      ///create new page for 
      Navigator.push(context, MaterialPageRoute(builder: (context) => AddContact10()));

      // context.read<ListMapProvider>().addMap({
      //   'name' : 'Bella',
      //   'mobNo' : '7878787878'
      //}):

      ///in case of listen-false/true confusion
      ///false wat
      ///use read for false and use watch for true

      // Provider.of<ListMapProvider>(context, listen: false).addMap({
      //   "name" : 'Alex',
      //   'mobNo' : '9898989898'
      // });

    }, child: Icon(Icons.add),
    ),
    );
  }
}