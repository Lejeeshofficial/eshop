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
            onTap: () {
              if (guest == false) {
                logOutAlertMessage(context, guest);
              } else {
                signOut(context, guest);
              }
            },
            // signOut(context, guest),
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

  logOutAlertMessage(BuildContext context, bool guest) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "LouOut !",
              style: TextStyle(
                fontFamily: "RobotoSlab",
                color: Colors.pink,
              ),
            ),
            content: const Text(
              "Are You Sure ?",
              style: TextStyle(
                fontFamily: "RobotoSlab",
                //color: Colors.pink,
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "NO",
                  style: TextStyle(
                    fontFamily: "RobotoSlab",
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    signOut(context, guest);
                    // .whenComplet(
                    //   () => Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => ScreenLoginpage(),
                    //     ),
                    //   ),
                    // );
                  },
                  child: const Text(
                    "YES",
                    style: TextStyle(
                      fontFamily: "RobotoSlab",
                      color: Colors.white,
                    ),
                  ))
            ],
          );
        });
  }

  signOut(BuildContext context, bool guest) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenLoginpage(),
        ),
        (route) => false);
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
