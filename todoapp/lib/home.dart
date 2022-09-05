import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/API.dart';
import 'package:todoapp/action.dart';
import 'package:todoapp/todo_provider.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  API api = API();
  String newTASK = '';
  TodoProvider todoProvider = TodoProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TodoAction(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: ListTile(
          title: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
            )
          ),
          onChanged: (value){
            newTASK = value;
            
          },
          ),
          trailing: TextButton(onPressed: (){
            Provider.of<TodoProvider>(context, listen: false).addTask(newTASK);
            api.addTask(newTASK);
          },child: Text("Add Task"),),
          ),
      )
    );
  }
}
