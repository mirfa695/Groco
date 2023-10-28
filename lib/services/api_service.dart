import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:groco/admin/screens/home_page.dart';
import 'package:groco/model_class/user_class.dart';

import 'package:http/http.dart' as http;

import '../routes/route_name.dart';
class ApiService{
  Future registerUser(String name,String email,int phno,String password)async{
  var response=await http.post(Uri.parse(' https://8d1a-117-213-13-75.ngrok.io/signUp/register'
  ),headers: {'Content-Type': 'application/json; charset=UTF-8'},
  body: jsonEncode({
    'name':name,
    'email':email,
    'phno':phno,
    'password':password
  })
  );
  if(response.statusCode==200){
    var decodedData=json.decode(response.body);
    return decodedData;
  }
  }
  Future loginUser({String? email,String? password,BuildContext? context})async{
    var response=await http.post(Uri.parse(' https://8d1a-117-213-13-75.ngrok.io/signIn/login'),
    headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({
        'email':email,
        'password':password
      })
    );
    if(response.statusCode==200){

      var decodeData=await json.decode(response.body);
      if(decodeData["role"]=='admin'){
        await Navigator.push(context!, MaterialPageRoute(builder: (context)=>AdminHome()));
      }
      else{
      await Navigator.pushNamed(context!, RouteName.homeRoute,arguments: decodeData["_id"]);
      }
      return decodeData;
    }
    else if(response.statusCode==401){
      throw 'Account doesnt exist';
    }else if(response.statusCode==402) {
      throw 'Invalid password';
    }
  }
  Future viewUsers()async{
    var response=await http.get(Uri.parse(' https://8d1a-117-213-13-75.ngrok.io/signIn/viewUsers'));
    if(response.statusCode==200){
      var decodeData=json.decode(response.body);
      List<User> data=decodeData["data"].map<User>((e){
       return User.fromJson(e);
      }).toList();
      return data;
    }
  }
  Future viewSingleUser(String id)async{
    var response=await http.get(Uri.parse(' https://8d1a-117-213-13-75.ngrok.io/signIn/viewUsers/$id'));
    if(response.statusCode==200){
      var decodeData=jsonDecode(response.body);
      User data=User.fromJson(decodeData);
      return data;
    }
  }
}