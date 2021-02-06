import 'package:JobUI/jobClass.dart';
import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {
  JobPage({Key key,this.items }):super(key:key); 
  final Jobs items;

  Widget _banner( double screensize){
    return 
     Container(height: screensize,
     //decoration: BoxDecoration(color: Colors.blue),
     decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assets/appimages/image.jpeg"),fit: BoxFit.cover),),
     
     );
  }

  Widget _profileImage( String image){
    return 
   Align(alignment: Alignment.topCenter,child: 
   Padding(
     padding: const EdgeInsets.all(20.0),
     child: Container(width:100, height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color:Colors.white,),
      image: DecorationImage(image: AssetImage('assets/appimages/'+image),fit: BoxFit.cover)
  )),),);
  }

  Widget _positionName(String positionName){
    TextStyle _positionTextStyle= TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25);
    return Align(alignment: Alignment.topCenter,child: Padding(padding: const EdgeInsets.all(120),child: 
    Container(width: 600, height: 50,child:Text(positionName,textAlign: TextAlign.center,style: _positionTextStyle,),),),);
  }

  Widget _positionDetails(String details, String company, double sizeH,double sizeW){
    return Align(alignment: Alignment.topCenter,child: 
    Padding(
      padding: const EdgeInsets.fromLTRB(30, 160, 30, 80),
      child: Container(padding: EdgeInsets.all(10),width: sizeW,height: sizeH,decoration: BoxDecoration(color: Colors.grey[200],
      ),child: Column(
        children: [Container(padding: EdgeInsets.all(10),alignment:Alignment.topLeft,child: Text("Job Description",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),)),
        SizedBox(height: sizeH *0.05,),
        Container(padding: EdgeInsets.all(10),child: Text(details)),
      //  SizedBox(height: sizeH *0.2,),
        Container(padding: EdgeInsets.all(10),alignment:Alignment.topLeft,child: Text("Company",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),)),
        SizedBox(height: sizeH *0.05,),
        Container(padding: EdgeInsets.all(10),child: Text(company)),
        ],
      ),),
    ),);
  }


  Widget _button(double sizeW){
    return SafeArea(
      child: Align(alignment: Alignment.bottomCenter, child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Container(width:sizeW*0.5,child: FlatButton(color:Colors.green,onPressed: (){}, child:Text("Apply Now"),)),
        Container(width: sizeW*0.5,child: FlatButton(color:Colors.red,onPressed: (){}, child:Text("Save Job")))
        ,],),
      ) ,),
    );
  }


  @override
  Widget build(BuildContext context) {
    double screensize = MediaQuery.of(context).size.height*0.2;
    double sizeH = MediaQuery.of(context).size.height*0.5;
    double sizeW = MediaQuery.of(context).size.width*0.9;
    return Scaffold(
       appBar: AppBar(
        title: Text(items.title),
      ),
      body:SafeArea(child: Stack(children: <Widget>[
        _banner(screensize),
        _profileImage(items.image),
        _positionName(items.title),
        _positionDetails(items.description, items.company,sizeH,sizeW),
        _button(sizeW)
      ],))
    );
  }
}
