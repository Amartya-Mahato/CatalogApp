import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/pages/Home_pages.dart';
import 'package:flutter_application_1/pages/Login_Page.dart';
import 'package:flutter_application_1/utils/Routes/routesMap.dart';
import 'package:flutter_application_1/widget/Theme/theme.dart';
import 'package:flutter_application_1/utils/Routes/routes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const App()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home_pages(key),
      initialRoute: Routes.homeRoute,
      // initialRoute: Routes.loginRoute,
      // routes: {
      //   Routes.homeRoute: (context) => Home_pages(),
      //   Routes.loginRoute: (context) => Login_Page(),
      // },
      routes: Routmap.routeMap,
      themeMode: ThemeMode.system,
      // theme: MyTheme.lightTheme(context),
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
    );
  }
}
