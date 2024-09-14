import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ws302_daily_classes/m09/ws10_provider_addcontact/add_contact/p_listmap_provider10.dart';
import 'package:ws302_daily_classes/m09/ws10_provider_addcontact/add_contact/p_listpage10.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ListMapProvider(),
    ///going to class on p_listpage10
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        ///
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListPage10(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    print('This builder is called without consumer');

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ListData pro"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<ListMapProvider>(builder: (_, provider,__){

              print("Consumer builder called");
              return Text(
                '${provider.getListData()}',

                style: Theme.of(context).textTheme.headlineMedium,
              );
            },)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Scaffold(

              appBar: AppBar(title: Text("Page 2"),backgroundColor: Colors.deepPurpleAccent,),

              // body: Center(
              //   child: IconButton(onPressed: (){
              //     Provider.of<ListMapProvider>(context,listen: false).incrementCount();
              //   }, icon: Icon(Icons.add)),
              // ),

            );
          }
          )
          );

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
