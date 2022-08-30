import 'package:app4/hotels.dart';
import 'package:flutter/material.dart';

class mywidget extends StatefulWidget {

  @override
  State<mywidget> createState() => _mywidgetState();
}

class _mywidgetState extends State<mywidget> {
  var h = hotels();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,5),
          child: Card(
            child: Column(
              children: [
                Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100,10,50,10),
                        child: Image(image: AssetImage("images/p1.jpg"),height: 100,width: 130,),
                      ),
                      Text("${h.GetCurrent().text1}",style: TextStyle(color: Colors.amber,fontSize: 18,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(70,10,8,10),
                        child: Icon(Icons.keyboard_arrow_up,color: Colors.grey,),
                      ),
                    ],
                  ),
                ),

                Text("${h.GetCurrent().text2}",style: TextStyle(fontSize: 18),)

              ],
            ),
            elevation: 15,
            color: Colors.grey[250],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,5),
          child: Card(
            child: Column(
              children: [
                Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100,10,50,10),
                        child: Image(image: AssetImage("images/p2.jpg"),height: 100,width: 130,),
                      ),
                      Text("${h.GetCurrent().text3}",style: TextStyle(color: Colors.amber,fontSize: 18,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60,10,8,10),
                        child: Icon(Icons.keyboard_arrow_up,color: Colors.grey,),
                      ),
                    ],
                  ),
                ),

                Text("${h.GetCurrent().text4}",style: TextStyle(fontSize: 18),)

              ],
            ),
            elevation: 15,
            color: Colors.grey[250],
          ),
        ),


        Card(
          child: Column(
            children: [
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100,10,45,10),
                      child: Image(image: AssetImage("images/p3.jpg"),height: 100,width: 130,),
                    ),
                    Text("${h.GetCurrent().text5}",style: TextStyle(color: Colors.amber,fontSize: 18,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55,10,8,10),
                      child: Icon(Icons.keyboard_arrow_up,color: Colors.grey,),
                    ),
                  ],
                ),
              ),

              Text("${h.GetCurrent().text6}",style: TextStyle(fontSize: 18),)

            ],
          ),
          elevation: 15,
          color: Colors.grey[250],
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(0,210,10,0),
          child: Align(
            alignment: Alignment.bottomRight ,
            child: TextButton(onPressed: 
            (){
              setState(() {
                h.move();
              });

            }, child: Text("Next"), style: TextButton.styleFrom(primary: Colors.white,backgroundColor: Colors.orange),),
          ),
        )
      ],
    );
  }
}