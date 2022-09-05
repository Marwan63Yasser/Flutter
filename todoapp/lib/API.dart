import 'package:flutter/material.dart';
import 'package:todoapp/task.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class API
{
   addTask(String s) async
  {
    Uri path = Uri.https("api.mohamed-sadek.com","/Task/POST");
    http.Response res = await http.post(path,
    headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, Object>{
          "Title": s,
        }));
         print(res.body);
  }
}