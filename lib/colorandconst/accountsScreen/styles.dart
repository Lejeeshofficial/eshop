import 'package:dotted_line/dotted_line.dart';
import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:flutter/material.dart';

TextStyle style1 = const TextStyle(
  fontFamily: "RobotoSlab",
  color: white1,
  fontSize: 22,
);
TextStyle style2 = const TextStyle(
  fontFamily: "RobotoSlab",
  color: Colors.pink,
  fontSize: 20,
);

BoxDecoration boxstyle = BoxDecoration(
  color: appBarColor,
  // borderRadius: BorderRadius.circular(
  //   0,
  // ),
);

BoxDecoration boxstyle1 = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.white,
);

TextStyle style3 = const TextStyle(
  fontFamily: "RobotoSlab",
  color: Colors.black,
  fontSize: 15,
);
TextStyle style4 = const TextStyle(
  fontFamily: "RobotoSlab",
  color: Colors.grey,
  fontSize: 13,
);

DottedLine dottedline = DottedLine(
  dashColor: appBarColor,
);
