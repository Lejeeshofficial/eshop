import 'package:badges/badges.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/cartscreen/cart_screen.dart';
import 'package:flutter/material.dart';

class WidgetHomeAppBar extends StatelessWidget {
  WidgetHomeAppBar(this.guest, {super.key});
  bool guest;

  late String variable = (guest == false) ? "Hi UserName" : "LogIn Guest";
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                variable,
                style: const TextStyle(
                  fontFamily: "RobotoSlab",
                  color: red1,
                ),
              ),
            ),
            const Spacer(),
            cart_bag(context, guest),
          ],
        ),
      ),
    );
  }

  Badge cart_bag(BuildContext context, bool guest) {
    return Badge(
      badgeColor: red1,
      badgeContent: const Text(
        '0',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      child: InkWell(
        onTap: () {
          if (guest == false) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenCart(),
              ),
            );
          }
        },
        child: const Icon(
          Icons.shopping_bag_outlined,
        ),
      ),
    );
  }
}
