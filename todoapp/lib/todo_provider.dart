import 'package:flutter/material.dart';


import 'package:todoapp/task.dart';

class TodoProvider extends ChangeNotifier {
  List<TASK> _tasks = [];

  List<TASK> get(){
    return _tasks;
  }

  void addTask(String task) {
    _tasks.add(TASK(taskName: task, done: false));
    notifyListeners();
  }

  void deleteTask(TASK task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleTask(TASK task) {
    var Index = _tasks.indexOf(task);
    _tasks[Index].toggle();
    notifyListeners();
  }

}