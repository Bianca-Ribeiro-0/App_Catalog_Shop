import 'package:flutter/material.dart';
import 'package:ola/widgets/themes.dart';
import 'pages/cart_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'utils/routes.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (ctx) => LoginPage(),
        MyRoutes.homeRoute: (ctx) => HomePage(),
        MyRoutes.loginRoute: (ctx) => LoginPage(),
        MyRoutes.cartRoute: (ctx) => CartPage(),
      },
    );
  }
}
