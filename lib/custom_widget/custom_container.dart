import 'package:flutter/material.dart';
import 'package:groco/provider_helper/class_cart.dart';
import 'package:provider/provider.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({required this.color,required this.image,required this.name,required this.price,
     Key? key}) : super(key: key);
  Color color;
  String image;
  String name;
  int price;
  @override
  Widget build(BuildContext context) {
    return Container(height: 300,width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:color, ),
      child: Column(
        children: [
         Image.asset(image,height: 110,width: 110,),
          const SizedBox(height: 20,),
          Text(name,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20),),
          const SizedBox(height: 5,),
          Text('price:  ₹$price/kg',style: const TextStyle(color: Colors.grey),),
          const SizedBox(width: 10,),
          ElevatedButton(onPressed: (){
            context.read<CartProvider>().addToCard(name);
          },style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), child: const Text('add',style: TextStyle(color: Colors.black),),)
        ],
      ),
    );
  }
}
