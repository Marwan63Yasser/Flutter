import 'package:app4/descScreen.dart';
import 'package:app4/hotel.dart';
import 'package:flutter/material.dart';


class Roomitem extends StatelessWidget {
  hotel item;
  Roomitem({required this.item});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: ((context) => Desc(ro: item))));
      },
      child: Column(
            children: [ 
              Container(
        margin: const EdgeInsets.all(5),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(item.image),
              ),
              borderRadius: BorderRadius.all(Radius.circular(80))
              ),
              ),
              Text(item.name,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
            ],
          ),
      
      );
  }
}