import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groco/routes/route_name.dart';
import 'package:groco/screens/default_page.dart';
import 'package:groco/screens/login_page.dart';
import 'package:groco/screens/nav.dart';
import 'package:groco/screens/nav1.dart';
import 'package:groco/screens/register_page.dart';
import 'package:groco/screens/splash_screen.dart';

class RouteNavigation{
static Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case RouteName.loginRoute:return MaterialPageRoute(builder: (context)=>LoginPage());
    case RouteName.splashRoute:return MaterialPageRoute(builder: (context)=>Splash());
    case RouteName.registerRoute:return MaterialPageRoute(builder: (context)=>RegisterPage());
    case RouteName.homeRoute:return MaterialPageRoute(builder: (context)=>BottomNavigation(id: settings.arguments as String));
    default:return MaterialPageRoute(builder: (context)=>DefaultPage());
  }
}
}