import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/accountscreen/account_screen.dart';
import 'package:eshop/view/cartscreen/cart_screen.dart';
import 'package:eshop/view/categoriesscreen/categories_screen.dart';
import 'package:eshop/view/favouritescreen/favourite_screen.dart';
import 'package:eshop/view/homescreen/home_screen.dart';
import 'package:flutter/material.dart';

class ScreenBottomNavigation extends StatefulWidget {
  const ScreenBottomNavigation({super.key});

  @override
  State<ScreenBottomNavigation> createState() => _ScreenBottomNavigationState();
}

class _ScreenBottomNavigationState extends State<ScreenBottomNavigation> {
  int currentindex = 0;
  List pages = const [
    ScreenHome(),
    ScreenCategories(),
    ScreenFavourite(),
    ScreenAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentindex,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: red1,
            icon: const Icon(Icons.home_outlined),
            title: const Text(
              "Home",
              style: TextStyle(fontFamily: "RobotoSlab"),
            ),
          ),
          BottomNavyBarItem(
            activeColor: red1,
            icon: const Icon(Icons.category_outlined),
            title: const Text(
              "categories",
              style: TextStyle(fontFamily: "RobotoSlab"),
            ),
          ),
          BottomNavyBarItem(
            activeColor: red1,
            icon: const Icon(Icons.favorite_border_outlined),
            title: const Text(
              "favourite",
              style: TextStyle(fontFamily: "RobotoSlab"),
            ),
          ),
          BottomNavyBarItem(
            activeColor: red1,
            icon: const Icon(Icons.account_circle_outlined),
            title: const Text(
              "Account",
              style: TextStyle(fontFamily: "RobotoSlab"),
            ),
          ),
        ],
        onItemSelected: (value) {
          setState(() {
            currentindex = value;
          });
        },
      ),
    );
  }
}
