import 'package:flutter/material.dart';
import 'package:store/screens/cart.dart';
import 'package:store/screens/home.dart';
import 'package:store/screens/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedBar = 0;

  void changeBar(int index) {
    setState(() {
      selectedBar = index;
    });
  }
 List<Widget> bottomBarScreens=[
   const HomeScreen(),
   const CartScreen(),
   const ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomBarScreens[selectedBar],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedBar,
      onTap: changeBar,
      elevation: 0,
      backgroundColor: Colors.indigo[50],
      selectedItemColor: Colors.indigo,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ],

    ),
    );
  }
}
