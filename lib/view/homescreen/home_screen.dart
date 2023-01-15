import 'dart:developer';

import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/homescreen/widgets/home_appbar.dart';
import 'package:eshop/view/homescreen/widgets/widgets_categories.dart';
import 'package:eshop/view/homescreen/widgets/widgets_items.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome(this.guest, {super.key});
  bool guest;
  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  // bool guest = false;
  // @override
  // void initState() {
  //   if (FirebaseAuth.instance.currentUser == null) {
  //     guest = true;
  //   }

  //   // TODO: implement initState
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   guest = false;
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    bool guest = widget.guest;
    // final user = FirebaseAuth.instance.currentUser;
    //log("${user!.email}-----------------------------------------");
    return Scaffold(
      body: ListView(
        children: [
          WidgetHomeAppBar(guest),
          Container(
            // height: 1000,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xffEDECf2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 5,
                        ),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here"),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.camera_alt_outlined,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: 'RobotoSlab',
                      fontSize: 20,
                    ),
                  ),
                ),
                WidgetCategories(guest),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Best sales',
                    style: TextStyle(
                      fontFamily: 'RobotoSlab',
                      fontSize: 20,
                    ),
                  ),
                ),
                WidgetItems(guest),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
