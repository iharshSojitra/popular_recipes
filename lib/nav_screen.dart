import 'package:flutter/material.dart';
import 'package:popular_recipes/order_screen.dart';
import 'package:popular_recipes/profile_screen.dart';

import 'home_screen.dart';

class Nav_Screen extends StatefulWidget {
  const Nav_Screen({Key? key}) : super(key: key);

  @override
  State<Nav_Screen> createState() => _Nav_ScreenState();
}

class _Nav_ScreenState extends State<Nav_Screen> {
  List screenss = [
    HomeScreen(),
    OrderScreen(),
    ProfileScreen(),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenss[selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        selectedItemColor: Colors.tealAccent.shade400,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            label: "",
          ),
        ],
      ),
    );
  }
}
