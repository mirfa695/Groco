import 'package:flutter/material.dart';
import 'package:groco/provider_helper/account_provider.dart';
import 'package:groco/provider_helper/admin_provide.dart';
import 'package:groco/provider_helper/class_cart.dart';
import 'package:groco/provider_helper/login_provider.dart';
import 'package:groco/provider_helper/register_provider.dart';
import 'package:groco/routes/route_name.dart';
import 'package:groco/routes/route_navigation.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<RegisterProvider>(create: (context)=>RegisterProvider()),
      ChangeNotifierProvider<loginProvider>(create: (context)=>loginProvider()),
      ChangeNotifierProvider<AdminProvider>(create: (context)=>AdminProvider()),
      ChangeNotifierProvider<AccountProvider>(create: (context)=>AccountProvider()),
      ChangeNotifierProvider(create: (context)=>CartProvider())],child: Main(),)
      );
}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute: RouteName.splashRoute,
      onGenerateRoute: RouteNavigation.generateRoute,
    );
  }
}
