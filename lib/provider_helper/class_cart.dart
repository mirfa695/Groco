import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CartProvider extends ChangeNotifier{
  List cartItems=[];
  void addToCard(String name){
    cartItems.add(name);
    notifyListeners();
  }
  List getList(){
    return cartItems;
  }
}