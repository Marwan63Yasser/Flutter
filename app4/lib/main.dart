import 'package:app4/descScreen.dart';
import 'package:app4/homeScreen.dart';
import 'package:app4/hotelScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "rooms":(context) => MyWidget(),
      },
    );
  }
}

