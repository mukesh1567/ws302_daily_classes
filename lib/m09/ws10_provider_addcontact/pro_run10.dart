import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ws302_daily_classes/m09/ws10_provider_addcontact/pro_provider10.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      ///single line return
      child: MyApp(),
    ///provider common parent pr lgana h
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
      home: MyHomePage(),
      ///yaha provider nhe use hoga,common parent pr hoga
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    print('This builder is called without consumer');
    ///consumer k use se full UI m change nhe hoga
    ///jaha use krege vahi change ayega

    return Scaffold(
      ///in return we build page here with scaffold
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("HomeProvider GM"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterProvider>(builder: (_, provider,__){
              ///without using context
              ///Consumer<CounterProvider>(builder: (ctx, provider,_){
              print("Consumer builder called");
              return Text(
                 '${provider.getCounterValue()}',
                 ///${Provider.of<CounterProvider>(ctx).getCounterValue()}',
                 ///provider use krege context ki jgh
                 ///'${Provider.of<CounterProvider>(context).getCounterValue()}
                 ///instead of context use ctx
                 style: Theme.of(context).textTheme.headlineMedium,
               );
            },)

            // Text(
            //   '${Provider.of<CounterProvider>(context).getCounterValue()}',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ///Provider.of<CounterProvider>(context, listen: false).incrementCount();
          ///ye increment yaha na krwa k, ek new page pr

          ///CounterProvider ko get krne k liye
          ///listen ko false , kyuki listen krne ki jrurt nhe h yaha
          ///by default true hota listen
          ///notifierlister ko call krwa rhe

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Scaffold(

              appBar: AppBar(title: Text("Page 2"),backgroundColor: Colors.deepPurpleAccent,),

              body: Center(
                child: IconButton(onPressed: (){
                  Provider.of<CounterProvider>(context,listen: false).incrementCount();
                }, icon: Icon(Icons.add)),
              ),

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
