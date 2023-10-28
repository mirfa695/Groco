import 'package:flutter/material.dart';
import 'package:groco/admin/screens/pages/dashboard.dart';
import 'package:groco/admin/screens/pages/products.dart';
import 'package:groco/admin/screens/pages/users.dart';
import 'package:groco/custom_widget/custom_heading.dart';
import 'package:side_navigation/side_navigation.dart';

class AdminHome extends StatefulWidget {
   const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  List views =  [
   DashBoardPage(),
   UsersPage(),
    ProductsPage(),
    Center(
      child: Text('Orders'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
          title: CustomHeading(text1: 'Admin',text2: 'Panel',size: 20,),
      ),
      body: Row(
        children: [
          SideNavigationBar(
            initiallyExpanded: false,
            theme: SideNavigationBarTheme(
                itemTheme: SideNavigationBarItemTheme(
                  selectedItemColor: Colors.orange,
                  unselectedItemColor: Colors.black
                ), togglerTheme: const SideNavigationBarTogglerTheme(
              expandIconColor: Colors.orange,
              shrinkIconColor: Colors.deepOrange
            ), dividerTheme: const SideNavigationBarDividerTheme(showHeaderDivider: true, showMainDivider: true, showFooterDivider: false)),
            header: const SideNavigationBarHeader(
                image: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.account_balance,color: Colors.white,),
                ),
                title: Text('Admin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text('user@gmail.com')
            ),
            footer: const SideNavigationBarFooter(
                label: Text('close')
            ),
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.people_alt_rounded,
                label: 'Users',
              ),
              SideNavigationBarItem(
                icon: Icons.bubble_chart,
                label: 'Products',
              ),
              SideNavigationBarItem(
                icon: Icons.shopping_bag,
                label: 'Orders',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
