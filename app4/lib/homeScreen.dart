import 'package:app4/hotelScreen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/home.jpeg'),fit: BoxFit.cover,)
        ),
        child: OutlinedButton(
          child: Text('Show Our Rooms',style: 
          TextStyle(color: Colors.black,fontSize: 20,fontFamily: 'OoohBaby'),),
          onPressed: (){
            Navigator.pushNamed(context, "rooms");
          }
          ),
    );
  }
}