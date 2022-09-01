import 'package:flutter/material.dart';
import 'package:moviee/APIcalls.dart';
import 'package:moviee/descScreen.dart';

class MovieCard extends StatelessWidget {
  Movie mov;
  MovieCard({required this.mov});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: ((context) => Desc(mo: mov))));
      },
      child: Card(
        child: Column(children: [
          Text(mov.original_title),
          Container(
          margin: const EdgeInsets.all(9),
          height: 150,
          width: 160,
          decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(mov.posterPath),),
                borderRadius: BorderRadius.all(Radius.circular(80))
                ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(70,0,0,0),
            child: Row(
              children: [
                Icon(
                    Icons.star_border,
                    color: Colors.amber,
                  ),
                Text(mov.id.toString()),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
