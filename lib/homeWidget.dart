import 'package:JobUI/categories.dart';
import 'package:JobUI/displayJobs.dart';
import 'package:JobUI/jobClass.dart';
import 'package:flutter/material.dart';




class HomeWidget extends StatelessWidget {

  final items = Jobs.getJobs();
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        //appBar:AppBar(title: Text("HOME"),),
        body: Center( child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(child: new Padding(padding: const EdgeInsets.all(1),
              child:
              Card(elevation: 10,child: new ListTile(
                leading: Icon(Icons.search),
                title: TextField(
                  decoration: InputDecoration(hintText: "Search Jobs",
                   border: InputBorder.none)),
                ),
              ),)),
             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:[FlatButton.icon(onPressed: (){},color:Colors.blue,icon:Icon(Icons.filter_list,color: Colors.white,), label:Text("Filter",style: TextStyle(color:Colors.white,fontSize:12),)),
               FlatButton.icon(onPressed: (){},color:Colors.blue,icon:Icon(Icons.add_location,color: Colors.white,), label:Text("Locations",style: TextStyle(color:Colors.white,fontSize:12),)),
               FlatButton.icon(onPressed: (){},color:Colors.blue,icon:Icon(Icons.search, color: Colors.white,), label:Text("Hottest",style: TextStyle(color:Colors.white,fontSize:12),)),
              ]),
              Row(
                children: [
                  Container(padding: EdgeInsets.all(10),
                    child: Text('Recent Jobs',textAlign: TextAlign.left,
                    style: TextStyle(color:Colors.blue, fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
             Container(height:MediaQuery.of(context).size.height*0.45 ,child: DisplayJobs()),
            ],
            ),
        ),
        ),
    );
  }
}