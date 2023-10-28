import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groco/custom_widget/custom_container.dart';

import '../model_class1.dart';

class FruitsPage extends StatelessWidget {
   FruitsPage({Key? key}) : super(key: key);
  List<Item> products = [
    Item(
        name: 'Apple',color: Colors.red.withOpacity(.2), price: 120, image: 'assets/images/apple.png'),
    Item(
        name: 'Orange',
        color: Colors.orange.withOpacity(.2),
        price: 150,
        image: 'assets/images/orange.png'),
    Item(
        name: 'Mango',
        color: Colors.yellow.withOpacity(.2),
        price: 130,
        image: 'assets/images/mango.png'),
    Item(
        name: 'Grapes',
        color: Colors.deepPurple.withOpacity(.2),
        price: 180,
        image: 'assets/images/grapes.png'),
    Item(
        name: 'Strawberry',
        color: Colors.pink.withOpacity(.2),
        price: 120,
        image: 'assets/images/strawberry.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: (6 / 10),
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0, maxCrossAxisExtent: 200,),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomContainer(
                color: products[index].color,
                image: products[index].image,
                name: products[index].name,
                price: products[index].price);
          },
        ),
      ),
    );
  }
}
