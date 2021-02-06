import 'package:flutter/material.dart';

class Categories extends StatelessWidget {



  List<Widget>_categories = <Widget>[
    _gridTiles(image: "images_21.jpeg",title: "Engineering",),
    _gridTiles(image: "images_22.jpeg",title: "Coding",),
    _gridTiles(image: "images_23.jpeg",title: "AI",),
    _gridTiles(image: "images_24.jpeg",title: "Developer",),
    _gridTiles(image: "images_21.jpeg",title: "Arduino",),
    _gridTiles(image: "images_23.jpeg",title: "Specialist",),
    

  ] ;
  @override
  Widget build(BuildContext context) {
    final double _size = MediaQuery.of(context).size.height*0.2;
    final double _sizeH = MediaQuery.of(context).size.height*0.65;
    return Scaffold(
    //appBar: AppBar(title:Text("Categories")),
    body: Column(
      children: [Container(padding: EdgeInsets.all(10),child: Text("Categories",style: TextStyle(color:Colors.blue, fontWeight: FontWeight.bold,fontSize: 25),
                ),),
        Container(height:_sizeH,padding: EdgeInsets.all(5),
        child: GridView.count(crossAxisCount: 2,children:_categories,),),
      ],
    ),);
  }
}


class _gridTiles extends StatelessWidget {
  _gridTiles({Key key, this.image,this.title}):super(key:key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridTile(child: new Container(height:50,margin: EdgeInsets.all(10),
      child: RaisedButton(elevation: 5,hoverColor: Colors.blue, onPressed: (){},
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[ Container(height: 70,decoration: BoxDecoration(image:
      DecorationImage(image: AssetImage('assets/appimages/'+image),fit: BoxFit.cover)))
      ,Container(margin:EdgeInsets.fromLTRB(10, 5, 10, 5),child: Text(title,style: TextStyle(color:Colors.blue),)),],),),)
        
      ),
    );
  }
}