import 'package:JobUI/jobClass.dart';
import 'package:JobUI/jobPage.dart';
import 'package:flutter/material.dart';


class JobBox extends StatelessWidget {
  JobBox({Key key,this.item}) :super(key:key);

  final Jobs item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Card(color: Colors.grey[200],child:  ListTile(leading:Container(
       child: Image.asset("assets/appimages/"+item.image),
     //  child: Text("hello world"),
        height: MediaQuery.of(context).size.height*0.1,),
  title: Text(item.title),
  subtitle: Text(item.description),
  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>JobPage(items:item)));})   
        ),);
  }
}