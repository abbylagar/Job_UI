
import 'package:JobUI/categories.dart';
import 'package:JobUI/displayJobs.dart';
import 'package:JobUI/homePage.dart';
import 'package:JobUI/jobClass.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'JobPortal',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    //  home: MyHomePage(title: 'JobPortal'),
      home: HomePage(),
      routes: {
        'HOME':(context)=>MyHomePage(),
        'CATEGORIES':(context)=> Categories()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final items = Jobs.getJobs();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center( child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(child: new Padding(padding: const EdgeInsets.all(1),
          child:
          Card(child: new ListTile(
            leading: Icon(Icons.search),
            title: TextField(
              decoration: InputDecoration(hintText: "Search Jobs",
               border: InputBorder.none)),
            ),
          ),)),
         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children:[FlatButton.icon(onPressed: (){},color:Colors.blue,icon:Icon(Icons.filter_list,color: Colors.white,), label:Text("Filter",style: TextStyle(color:Colors.white),)),
           FlatButton.icon(onPressed: (){},color:Colors.blue,icon:Icon(Icons.add_location,color: Colors.white,), label:Text("Locations",style: TextStyle(color:Colors.white),)),
           FlatButton.icon(onPressed: (){},color:Colors.blue,icon:Icon(Icons.search, color: Colors.white,), label:Text("Hottest",style: TextStyle(color:Colors.white),)),
           FlatButton.icon(onPressed: (){
             Navigator.pop(context);
             Navigator.pushNamed(context, "CATEGORIES");
           },color:Colors.blue,icon:Icon(Icons.category,color: Colors.white,), label:Text("Categories",style: TextStyle(color:Colors.white),)),
           ]),
          Row(
            children: [
              Container(padding: EdgeInsets.all(10),
                child: Text('Recent Jobs',textAlign: TextAlign.left,
                style: TextStyle(color:Colors.blueGrey, fontWeight: FontWeight.bold,fontSize: 25),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
         Container(height:MediaQuery.of(context).size.height*0.5 ,child: DisplayJobs()),
          Text("Hello"),
        ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    bottomNavigationBar: BottomAppBar(),);
  }
}
