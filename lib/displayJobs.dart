import 'package:JobUI/JobBox.dart';
import 'package:JobUI/jobClass.dart';
import 'package:flutter/material.dart';



class DisplayJobs extends StatefulWidget {
  @override
  _DisplayJobsState createState() => _DisplayJobsState();
}

class _DisplayJobsState extends State<DisplayJobs> {
@override
 
  Widget build(BuildContext context) {
    final items = Jobs.getJobs();
    return ListView.builder(itemCount: items.length,
        itemBuilder:(context,index){
          return JobBox(item: items[index]);});
  }
}



