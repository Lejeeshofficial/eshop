import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/colors.dart';
import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/view/orderplacedpage.dart/orderplaced.dart';
import 'package:flutter/material.dart';

class ReviewNavBar extends StatelessWidget {
  const ReviewNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: white1,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const ScreenOrderPlaced()),
              )),
          child: Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: pink1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                const Text(
                  "3 items",
                  style: TextStyle(
                    fontFamily: "RobotoSlab",
                    color: white1,
                  ),
                ),
                kwidth10,
                const Text(
                  "|",
                  style: TextStyle(
                    fontFamily: "RobotoSlab",
                    color: white1,
                  ),
                ),
                kwidth10,
                const Text(
                  "\$ 165",
                  style: TextStyle(
                    fontFamily: "RobotoSlab",
                    color: white1,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Place Order",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "RobotoSlab",
                    color: white1,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
