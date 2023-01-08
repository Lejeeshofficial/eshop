import 'dart:collection';
import 'dart:ffi';

import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:flutter/material.dart';

class WidgetAccountAppBar extends StatelessWidget {
  WidgetAccountAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    return Container(
      height: height1 * .3,
      color: appBarColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    "Profile",
                    style: style1,
                  ),
                  const Spacer(),
                  Container(
                    //color: white1,
                    //height: 10,
                    decoration: BoxDecoration(
                        color: white1,
                        border: const Border(),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.logout,
                            size: 25,
                            //  color: Colors.pink,
                          ),
                          Text(
                            'Logout',
                            style: style2,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
