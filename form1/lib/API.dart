import 'package:flutter/material.dart';
import 'package:form1/user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class API
{
   addUser(student s) async
  {
    Uri path = Uri.https("api.mohamed-sadek.com","/Student/POST");
    http.Response res = await http.post(path,
    headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, Object>{
          "FirstName": s.FirstName,
          "LastName": s.LastName,
          "Mobile": s.Mobile,
          "Email": s.Email,
          "NationalID": s.Password,
          "Age": "20" 
        }));
         print(res.body);
  }
}