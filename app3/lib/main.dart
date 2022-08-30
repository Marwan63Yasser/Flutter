import 'package:app4/hotelScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Rooms List"),
          leading: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,

        body: mywidget(),
      ),
    );
  }
}

