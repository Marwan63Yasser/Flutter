import 'dart:convert';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:moviee/movieCard.dart';
import 'package:moviee/APIcalls.dart';


class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}
 
class _ListScreenState extends State<ListScreen> {
  List<Movie> list = [];
  @override
  void initState() {
    callAPI();
    super.initState();
  }

  callAPI() async {
    var api = APICalls();
    List<Movie> returnedlist = await api.getPopularMovies();

    setState(() {
      list = returnedlist;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print("build");
    if (list.isEmpty) {
      return Center( 
        child: SpinKitDualRing(color: Colors.white,)
      );
    } else {
      return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: list.length,
            itemBuilder: (context, index) => MovieCard(mov: list[index]),
      );
    } 
  }
} 



/* import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: GridView.count(
        crossAxisCount: 2,
        children: [

          Column(
            children: [ 
              Container(
        margin: const EdgeInsets.all(10),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-netflix-animation-transylvania-1585679626.jpg?crop=1xw:1xh;center,top&resize=480:*"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('Hotel Transylvania 3')
            ],
          ),

          Column(
            children: [
              Container(
        margin: const EdgeInsets.all(10.0),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://hips.hearstapps.com/clv.h-cdn.co/assets/17/51/early-man-feb-2018.jpg?crop=0.9876543209876543xw:1xh;center,top&resize=480:*"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('Early Man')
            ],
          ),


          Column(
            children: [
              Container(
        margin: const EdgeInsets.all(10.0),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://i.ytimg.com/vi/XDrwmLdXzXE/movieposter_en.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('Onward')
            ],
          ),


          Column(
            children: [ 
              Container(
        margin: const EdgeInsets.all(10),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://media.comicbook.com/2017/10/iron-man-movie-poster-marvel-cinematic-universe-1038878.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('Iron Man')
            ],
          ),

          Column(
            children: [
              Container(
        margin: const EdgeInsets.all(10.0),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://sm.ign.com/t/ign_za/gallery/s/spider-man/spider-man-far-from-home-official-movie-posters_ex7e.1080.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('Spider Man')
            ],
          ),


          Column(
            children: [
              Container(
        margin: const EdgeInsets.all(10.0),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://images.fandango.com/ImageRenderer/0/0/redesign/static/img/default_poster.png/0/images/masterrepository/other/ant_man_ver5.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('ANT-Man')
            ],
          ),

          Column(
            children: [
              Container(
        margin: const EdgeInsets.all(10.0),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://blog.simplified.com/wp-content/uploads/2021/06/harry-potter-and-the-sorcerers-stone.png"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('Harry Potter')
            ],
          ),

          Column(
            children: [
              Container(
        margin: const EdgeInsets.all(10.0),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://mymodernmet.com/wp/wp-content/uploads/2018/01/honest-movie-posters-7.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('Black Mirror')
            ],
          ),


          Column(
            children: [
              Container(
        margin: const EdgeInsets.all(10.0),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://cdn.shopify.com/s/files/1/2356/1293/products/Avengers_-_End_Game_800x.jpg?v=1558989681"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('Avengers - End Game')
            ],
          ),


          Column(
            children: [
              Container(
        margin: const EdgeInsets.all(10.0),
        height: 160,
        width: 160,
        
        decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              ),
              Text('After')
            ],
          ),
          
        ],

        ),
        
    );
  }
} */

