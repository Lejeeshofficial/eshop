import 'package:badges/badges.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/cartscreen/cart_screen.dart';
import 'package:flutter/material.dart';

class WidgetHomeAppBar extends StatelessWidget {
  const WidgetHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            const Icon(
              Icons.sort,
              size: 30,
              //color: red1,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Hi Lejeesh',
                style: TextStyle(
                  fontFamily: "RobotoSlab",
                  color: red1,
                ),
              ),
            ),
            const Spacer(),
            Badge(
              badgeColor: red1,
              badgeContent: const Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenCart(),
                  ),
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}