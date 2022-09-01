import 'package:flutter/material.dart';
import 'package:moviee/APIcalls.dart';
import 'package:moviee/movieCard.dart';

class FilterScreen extends StatefulWidget {

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  String inputData = "";
  List<Movie> list = [];
  APICalls api = APICalls();
  callApi() async {
    var retlist = await api.SearchforMovies(inputData);
    setState(() {
      list = retlist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          child: TextField(decoration: InputDecoration(icon: Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                cursorColor: Colors.blue[800],
               style: TextStyle(color: Color.fromARGB(255, 196, 148, 148),fontSize: 18,fontWeight: FontWeight.bold), 
            onChanged: (value) {
              setState(() {
                inputData = value;
              });
              callApi();
            },
          ),
        ),
        Expanded(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: list.length,
            itemBuilder: (context, index) => MovieCard(mov: list[index]),
      ),
        )
      ],
    );
  }
}

