import 'package:flutter/material.dart';
import 'package:groco/custom_widget/custom_heading.dart';
import 'package:groco/provider_helper/class_cart.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:CustomHeading(text1: 'CA',text2: 'RT',),centerTitle: true,backgroundColor: Colors.white,),
      body: ListView.builder(
        itemCount: context.read<CartProvider>().getList().length,
          itemBuilder: (BuildContext context,int index){
          print(context.read<CartProvider>().getList()[index]);
        return Card(child: ListTile(
            title: Text(context.read<CartProvider>().getList()[index])),);
      })
    );
  }
}
