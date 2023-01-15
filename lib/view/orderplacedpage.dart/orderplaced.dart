import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenOrderPlaced extends StatelessWidget {
  const ScreenOrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 250,
              width: 250,
              child: Lottie.asset("lib/animations/85316-check.json"),
            ),
          ),
          kheight10,
          const Text(
            "Order Placed Successfully",
            style: TextStyle(
              color: black1,
              fontFamily: "RobotoSlab",
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenBottomNavigation(),
                ),
                (route) => false),
            child: const Text(
              "Go to Home Screen",
              style: TextStyle(
                color: red1,
                fontFamily: "RobotoSlab",
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
