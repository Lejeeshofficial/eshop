import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenOrderPlaced extends StatelessWidget {
  const ScreenOrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          )
        ],
      ),
    );
  }
}
