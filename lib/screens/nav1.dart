import 'package:flutter/material.dart';
import 'package:groco/admin/screens/home_page.dart';
import 'package:groco/custom_widget/custom_heading.dart';
import 'package:groco/screens/fruits_page.dart';
import 'cart_page.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,centerTitle: true,
        title: CustomHeading(text1: 'GRO',text2: 'CO',),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
          },
          icon:const Icon(Icons.shopping_cart,color: Colors.black,),)
        ],
      ),
      body: Row(
        children: <Widget>[
          RotatedBox(
            quarterTurns: 1,
            child: Container(
              width: 700,height: 40, // Adjust the width as needed
              child: Material(color: Colors.black,
                child: TabBar(
                  indicatorColor: Colors.orange,
                  controller: _tabController,
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(
                    color: Colors.blue, // Change the text color of the selected tab
                    fontSize: 15,fontWeight: FontWeight.w900 // Optional: Adjust the font size
                  ),
                  tabs: const <Widget>[
                    Tab(text: 'Fruits'),
                    Tab(text: 'Vegitables'),
                    Tab(text: 'Masalas'),
                    Tab(text: 'Meat',),
                    Tab(text: 'Milky',)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
               FruitsPage(),
                const Center(child: Text('Tab 2 Content')),
                const Center(child: Text('Tab 3 Content')),
                Center(child: Text('Tab 4 Content')),
                Center(child: Text('Tab 5 Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
