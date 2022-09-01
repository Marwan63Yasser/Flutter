import 'package:flutter/material.dart';
import 'package:moviee/APIcalls.dart';

class Desc extends StatelessWidget {

  Movie mo;
  Desc({required this.mo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mo.original_title),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(mo.posterPath),),borderRadius:
            BorderRadius.circular(200)),
            
            child:  Text(""),
          ),
          Container(child: Text(mo.overview,style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 214, 214, 214)),),margin: EdgeInsets.all(20),),

          // Container(
          //   margin: EdgeInsets.all(20),
          //   child: SizedBox(
          //     height: 50,
          //     width: 100,
          //     child: TextButton(
          //       style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 37, 24, 90),),
          //       onPressed: (){},
          //       child: Text("Watch Now!",style: TextStyle(fontSize: 15),),),
          //   ),
          // ),
        ],
      ),
    );
  }
}