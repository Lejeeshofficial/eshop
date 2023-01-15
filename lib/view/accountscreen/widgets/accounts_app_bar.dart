import 'dart:collection';
import 'dart:ffi';

import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:eshop/view/loginscreen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class WidgetAccountAppBar extends StatelessWidget {
  WidgetAccountAppBar(this.guest, {super.key});

  bool guest;

  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    return Container(
      decoration: boxstyle,
      width: double.infinity,
      height: height1 * .25,
      //  color: appBarColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ProfileAndLogout(guest),
            kheight10,
            const CircularAvatar(),
            kheight10,
            NameWidget(guest)
          ],
        ),
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  NameWidget(
    this.guest, {
    Key? key,
  }) : super(key: key);
  bool guest;
  late String variable = (guest != false) ? "Guest" : "UserName";

  @override
  Widget build(BuildContext context) {
    return Text(
      variable,
      style: style1,
    );
  }
}

class ProfileAndLogout extends StatelessWidget {
  ProfileAndLogout(
    this.guest, {
    Key? key,
  }) : super(key: key);
  bool guest;
  late String variable = (guest == false) ? "LogOut" : "LogIn";
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
          InkWell(
            onTap: () => signOut(context, guest),
            child: Container(
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
                      variable,
                      style: style2,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  signOut(BuildContext context, bool guest) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenLoginpage(),
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
