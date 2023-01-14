import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:eshop/view/address/Address.dart';
import 'package:flutter/material.dart';

import '../../../colorandconst/productScreen/stayle.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: style1,
                ),
                RichText(
                  text: const TextSpan(
                    text: '\$',
                    style: TextStyle(
                      color: red1,
                      fontFamily: "RobotoSlab",
                      fontSize: 20,
                      //fontWeight: FontWeight.w100,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " 165",
                        style: TextStyle(
                          color: black1,
                          fontFamily: "RobotoSlab",
                          fontSize: 20,
                          //fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenAddress(),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: red1,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Check Out",
                  style: style2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
