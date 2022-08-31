import 'package:app4/hotel.dart';
import 'package:app4/hotels.dart';
import 'package:flutter/material.dart';
 
 class Desc extends StatelessWidget {
  hotel ro;
  hotels hh = hotels();
  Desc({required this.ro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ro.name),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 60, 20, 20),
            child: Image(image: AssetImage(ro.image))),
          
          Container(child: Text(ro.desc,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo),),margin: EdgeInsets.all(20),),

          Container(
            margin: EdgeInsets.all(30),
            child: SizedBox(
              height: 60,
              width: 120,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 37, 24, 90),),
                onPressed: (){},
                child: Text("Check-in",style: TextStyle(fontSize: 18),),),
            ),
          ),
        ],
      ),
    );
  }
}