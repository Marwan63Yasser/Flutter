import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/todo_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => TodoProvider()),
    child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Home(),
    )
    );
  }
}

