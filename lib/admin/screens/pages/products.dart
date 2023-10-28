import 'package:flutter/material.dart';
import 'package:groco/admin/screens/pages/product_fruits.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1),
        children: [
          InkWell(
            onTap:(){
            },
            child: Card(
              child: Center(child: Icon(Icons.add)),
            ),
          ),
          InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FruitProduct()));
            },
            child: Card(
              child: Stack(children: [
                Image.network('https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature.jpg?sfvrsn=64942d53_4',
                  opacity: AlwaysStoppedAnimation(.5),fit: BoxFit.fill,height: 300,),
                Center(child: Text('Fruits',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))]),
            ),
          ),
          Card(
            child: Stack(children: [
              Image.network('https://staticcookist.akamaized.net/wp-content/uploads/sites/22/2018/12/vegetables.jpg',
                opacity: AlwaysStoppedAnimation(.5),fit: BoxFit.fill,height: 300,),
              Center(child: Text('veggies',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))]),
          ),
          Card(
            child: Stack(children: [
              Image.network('https://www.century-foods.com/wp-content/uploads/2020/09/1440x960-spices-1.jpg',
                opacity: AlwaysStoppedAnimation(.5),fit: BoxFit.fill,height: 300,),
              Center(child: Text('masalas',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))]),
          ),
          Card(
            child: Stack(children: [
              Image.network('https://facts.net/wp-content/uploads/2022/06/different-types-of-meat.jpg',
                opacity: AlwaysStoppedAnimation(.5),fit: BoxFit.fill,height: 300,),
              Center(child: Text('meat',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))]),
          ),
          Card(
            child: Stack(children: [
              Image.network('https://img.etimg.com/thumb/width-640,height-480,imgsize-27834,resizemode-75,msid-95435628/industry/cons-products/food/two-fold-rise-in-dairy-exports-melts-butter-stocks-at-home.jpg',
                opacity: AlwaysStoppedAnimation(.5),fit: BoxFit.fill,height: 300,),
              Center(child: Text('milky',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))]),
          ),
          ],
        ),
      ),
    );
  }
}
