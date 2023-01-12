import 'dart:collection';
import 'dart:ffi';

import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:flutter/material.dart';

class WidgetAccountAppBar extends StatelessWidget {
  WidgetAccountAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: height1 * .3,
      color: appBarColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [
            ProfileAndLogout(),
            kheight10,
            CircularAvatar(),
            kheight10,
            NameWidget()
          ],
        ),
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Lejeesh.k",
      style: style1,
    );
  }
}

class ProfileAndLogout extends StatelessWidget {
  const ProfileAndLogout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class CircularAvatar extends StatelessWidget {
  const CircularAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 54,
      backgroundImage: AssetImage("lib/assets/images.jpeg"),
    );
  }
}
