
import 'package:flutter/material.dart';

import 'package:e_pay/splash.dart';
import 'package:e_pay/home.dart';


class RouteManager{
  static const String splash = "/";
  static const String home = "/homePage";



  static Route<dynamic>? onGenerateRoute (RouteSettings setting) {
    switch(setting.name){
      //route for splash
      case splash:
        return MaterialPageRoute(builder: (context) => const Splash());

        //route for home
        case home:
        return MaterialPageRoute(builder: (context) => const HomePage
        ());

    }
    return null;
  }
}
