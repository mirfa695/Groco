import 'package:flutter/material.dart';
import 'package:groco/services/api_service.dart';


class loginProvider extends ChangeNotifier{
  Future userLogin({String? email,String? password,BuildContext? context})async{
    try{
      await ApiService().loginUser(email: email,password: password,context: context);

    }catch(e){
      ScaffoldMessenger.of(context!).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}