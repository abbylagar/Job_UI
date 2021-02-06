import 'package:JobUI/categories.dart';
import 'package:JobUI/home.dart';
import 'package:JobUI/homeWidget.dart';
import 'package:JobUI/jobClass.dart';
import 'package:JobUI/main.dart';
import 'package:JobUI/profileWidget.dart';
import 'package:JobUI/searchWidget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<BottomNavigationBarItem> _navigationBarItems = [
    BottomNavigationBarItem(
      title: Text('Home'),
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      title: Text('Search'),
      icon: Icon(Icons.search),
    ),
    BottomNavigationBarItem(
      title: Text('Profile'),
      icon: Icon(Icons.account_circle),
    ),
    BottomNavigationBarItem(icon: Icon(Icons.category),
    title: Text("Categories"))
  ];


Widget _currentWidget = HomeWidget();

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
    switch (index) {
      case 0:
        _currentWidget = HomeWidget();
        break;
      case 1:
        _currentWidget = SearchWidget();
        break;
      case 2:
        _currentWidget = ProfileWidget();
      break;
      case 3:
      _currentWidget = Categories();
      break;
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JobPortal"),
      ),

      bottomNavigationBar: BottomNavigationBar(elevation: 5,
        //backgroundColor:Colors.blue ,
        items: _navigationBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: _currentWidget,
    );
  }
}