import 'package:app4/RoomItem.dart';
import 'package:app4/hotels.dart';
import 'package:app4/kingRoom.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  hotels h = hotels();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Room Types List"),backgroundColor: Colors.amber,),
      body: Container(
        
        child: GridView.count(
          crossAxisCount: 2,
          children: h.Hotels.map((item) => Roomitem(item: item)).toList(),
        ),
      )
    );
  }
}
