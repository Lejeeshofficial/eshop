import 'dart:math';

import 'package:dotted_line/dotted_line.dart';
import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/colors.dart';
import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/colorandconst/productScreen/stayle.dart';
import 'package:flutter/material.dart';

class WidgetCartItems extends StatelessWidget {
  const WidgetCartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 1; i < 4; i++)
            Container(
              height: 120,
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              padding: const EdgeInsets.all(
                10,
              ),
              decoration: BoxDecoration(
                color: white1,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Radio(
                    value: "",
                    groupValue: "",
                    onChanged: (index) {},
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: Image.asset("lib/assets/$i.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        kheight10,
                        Text(
                          "Queen Sandals",
                          style: styletitle,
                        ),
                        kheight10,
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: background,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.add,
                                color: pink1,
                              ),
                            ),
                            kwidth10,
                            Text(
                              "01",
                              style: style3,
                            ),
                            kwidth10,
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: background,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.remove,
                                color: pink1,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.delete,
                          color: pink1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "------",
                          style: style3,
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
                                text: " 55",
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
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
