import 'package:flutter/cupertino.dart';
import 'package:groco/services/api_service.dart';

import '../model_class/user_class.dart';

class AccountProvider extends ChangeNotifier{
  User? user;
  Future getUser(String id)async{
   user= await ApiService().viewSingleUser(id);
    notifyListeners();
  }
}