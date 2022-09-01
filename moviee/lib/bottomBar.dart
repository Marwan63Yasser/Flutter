import 'package:flutter/material.dart';
import 'package:moviee/homeScreen.dart';
import 'package:moviee/listScreen.dart';
import 'package:moviee/filterScreen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selected = 1;
  List<Widget> Screens = [ListScreen(), HomeScreen(), FilterScreen()];
  List<String> titles = ["Explore", "See Movie", "Search"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titles[selected])),
      body: Screens[selected],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blueAccent,
        currentIndex: selected,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Filter",
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
          decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/qqq.jpg'),fit: BoxFit.fill),
          ),
          
          child: Text('Options',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      ListTile(
        leading: Icon(Icons.app_registration_rounded),
        title: const Text('Sign Up'),
        onTap: () {
        }, 
      ),

      ListTile(
        leading: Icon(Icons.how_to_reg),
        title: const Text('Sign In'),
        onTap: () {
        },
      ),

      ListTile(
        leading: Icon(Icons.padding_outlined),
        title: const Text('Profile'),
        onTap: () {
        },
      ),

      ListTile(
        leading: Icon(Icons.settings),
        title: const Text('Settings'),
        onTap: () {
        },
      ),
          ],
        ),
      ),
    );
  }
}