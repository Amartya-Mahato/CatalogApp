import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/utils/Routes/routes.dart';

import '../../pages/Home_pages.dart';
import '../../pages/Login_Page.dart';

class Routmap {
  static var routeMap = {
     Routes.homeRoute: (context) => Home_pages(),
     Routes.loginRoute: (context) => Login_Page(),
     Routes.cartRoute: (context) => CartPage(),
  };
}