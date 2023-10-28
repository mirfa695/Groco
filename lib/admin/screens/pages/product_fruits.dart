import 'package:flutter/material.dart';
import 'package:groco/custom_widget/custom_textfield.dart';

class FruitProduct extends StatelessWidget {
  const FruitProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text("Add Fruit"),
            content: SingleChildScrollView(
              child: Column(children: [
                CustomTextFiels(text: 'Name',),
                CustomTextFiels(text: 'color',),
                CustomTextFiels(text: 'image',),
                CustomTextFiels(text: 'price',),
                CustomTextFiels(text: 'category',),
                CustomTextFiels(text: 'rating',),
                CustomTextFiels(text: 'Quantity',),
                CustomTextFiels(text: 'description',),

              ],),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(14),
                  child: const Text("Add",style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom,
              ),
            ],
          ),
        );
      },child: Icon(Icons.add),backgroundColor: Colors.orange,),
      body:  Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40,right: 5,left: 5),
              child: Table(
                defaultColumnWidth: IntrinsicColumnWidth(),
                border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2),
                children: const [
                  TableRow( children: [
                    Column(children:[Text('Name', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))]),
                    Column(children:[Text('color', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))]),
                    Column(children:[Text('image', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))]),
                    Column(children:[Text('price', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))]),
                    Column(children:[Text('category', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))]),
                    Column(children:[Text('rating', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))]),
                    Column(children:[Text('quantity', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))]),
                    Column(children:[Text('description', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('apple')]),
                    Column(children:[Text('red')]),
                    Column(children:[Text('htnd')]),
                    Column(children:[Text('90')]),
                    Column(children:[Text('fruits')]),
                    Column(children:[Text('3.4')]),
                    Column(children:[Text('4')]),
                    Column(children:[Text('red fruit')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('orange')]),
                    Column(children:[Text('orange')]),
                    Column(children:[Text('djcsd')]),
                    Column(children:[Text('120')]),
                    Column(children:[Text('fruits')]),
                    Column(children:[Text('4')]),
                    Column(children:[Text('6')]),
                    Column(children:[Text('orange fruit')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('grape')]),
                    Column(children:[Text('purple')]),
                    Column(children:[Text('hgbh')]),
                    Column(children:[Text('30')]),
                    Column(children:[Text('fruits')]),
                    Column(children:[Text('3')]),
                    Column(children:[Text('6')]),
                    Column(children:[Text('many fruit')]),
                  ]),
                ],
              ),
            ),
          ])
      )
    );
  }
}
