import 'package:flutter/material.dart';
import 'package:groco/screens/account_page.dart';
import 'package:groco/screens/cart_page.dart';

import 'nav1.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({ required this.id,Key? key}) : super(key: key);
  final String id;
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
   List? page0;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    page0= [
      Nav(),
      AccountPage(id: widget.id??''),
      const CartPage(),
    ];
  }
  int pageIndex = 0;



  void _updateIndex(int value) {
    setState(() {
      pageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page0![pageIndex],
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart')
      ], currentIndex: pageIndex,
          onTap: _updateIndex),
    );
  }
}
