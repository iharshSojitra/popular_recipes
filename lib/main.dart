import 'package:flutter/material.dart';
import 'package:popular_recipes/demo.dart';
import 'package:popular_recipes/profile_screen.dart';
import 'package:popular_recipes/splash_screen.dart';
import 'grid_demo.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'mediaquery_demo.dart';
import 'nav_screen.dart';
import 'order_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
