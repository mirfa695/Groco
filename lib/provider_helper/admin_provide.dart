import 'package:flutter/cupertino.dart';
import 'package:groco/services/api_service.dart';

class AdminProvider extends ChangeNotifier{
  Future Users()async{
    try{
      var data=await ApiService().viewUsers();
    notifyListeners();
    return data;
    }
        catch(e){
      print(e);
        }
  }
}