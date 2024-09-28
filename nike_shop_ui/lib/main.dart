import 'package:flutter/material.dart';
import 'package:nike_shop_ui/pages/home_page.dart';
import 'package:nike_shop_ui/pages/item_page.dart';
import 'package:nike_shop_ui/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffCEDDEE)),
      routes: {
        '/': (context) => const LoginPage(),
        'homePage': (context) => const HomePage(),
        'itemPage': (context) => const ItemPage(),
      },
    );
  }
}
