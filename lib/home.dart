import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab=0;
  Widget currentScreen = Home();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: PageStorage(bucket: bucket,
      child: currentScreen, 
      ),
      bottomNavigationBar: BottomAppBar(shape:CircularNotchedRectangle(),
      child:Container(height: MediaQuery.of(context).size.height*0.1,
      child: Row(children: <Widget>[MaterialButton(onPressed: (){
        setState((){
          currentScreen= Home();
          currentTab=0;
        });
      }, child: Column(children: <Widget>[Icon(Icons.dashboard,color:currentTab == 0 ? Colors.blue : Colors.grey),
      Text("Dashboard",style: TextStyle(color:currentTab == 0 ? Colors.blue : Colors.grey),)],),)
      ],)
      ,)),
    );
  }
}