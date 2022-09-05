import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/todo_provider.dart';


class TodoAction extends StatelessWidget {
  const TodoAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var task = Provider.of<TodoProvider>(context);
  
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List " + "(Tasks: " + task.get().length.toString()+")"),),
      body: Column( 
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: task.get().length,
              itemBuilder: ((context, index) => ListTile(
                    leading: IconButton(
                        onPressed: () {
                          task.deleteTask(task.get()[index]);
                        },
                        icon: const Icon(Icons.delete_forever_outlined, color: Colors.red)),
                    title: Text(task.get()[index].taskName),
                    trailing: Checkbox(
                      value: task.get()[index].done,
                      onChanged: ((_) => task.toggleTask(task.get()[index])
                      )
                      )
                  )
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
