import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:groco/services/api_service.dart';

import '../routes/route_name.dart';

class RegisterProvider extends ChangeNotifier{
  Future postRegister(String name,String email,int phno,String password,BuildContext context)async{
    try{
      await ApiService().registerUser(name, email, phno, password);
      Navigator.pushNamed(context, RouteName.homeRoute);
    }catch(e){
      print(e);
    }
  }
}