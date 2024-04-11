import 'package:flutter/material.dart';

import 'package:flutter_project/screens/menu_home.dart';
//import 'package:flutter_project/screens/select_city.dart';
//import 'package:flutter_project/screens/contactUs.dart';
import 'package:flutter_project/screens/auth_gate.dart';

const String menuHome = 'Home Page';
//const String selectCity = 'Select City';
/*const String contactUs = 'About Us';*/
const String authGate = 'Auth Gate';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case menuHome:
      return MaterialPageRoute(builder: (context) => const MenuHome());
    /*case selectCity:
      return MaterialPageRoute(builder: (context) => const SelectCity());
    case contactUs:
      return MaterialPageRoute(builder: (context) => ContactUs());*/
    case authGate:
      return MaterialPageRoute(builder: (context) => const AuthGate());
    default:
      throw ('This route name does not exist!');
  }
}
