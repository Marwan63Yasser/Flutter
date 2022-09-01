import 'package:flutter/material.dart';
import 'package:moviee/homeScreen.dart';
import 'package:moviee/listScreen.dart';
import 'package:moviee/filterScreen.dart';



class MyWidget extends StatefulWidget { 
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Movie App"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home),
            text: "Home",),

            Tab(icon: Icon(Icons.list),
            text: "List",),

            Tab(icon: Icon(Icons.search),
            text: "Filter",),
            
          ],
          ),
        ),
        body: TabBarView(
          children: [HomeScreen(),ListScreen(),FilterScreen()],
        ),
    );
  }
}