import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:flutter/material.dart';

class RowsEach extends StatelessWidget {
  RowsEach(
      {required this.iconsName,
      required this.text1,
      required this.text2,
      Key? key})
      : super(key: key);
  IconData iconsName;
  String text1;
  String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          iconsName,
          size: 27,
        ),
        kwidgth15,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text2,
              style: style3,
            ),
            Text(
              text1,
              style: style4,
            )
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 27,
        )
      ],
    );
  }
}

class RowsEach1 extends StatelessWidget {
  RowsEach1(
      {required this.iconsName,
      required this.text1,
      required this.text2,
      Key? key})
      : super(key: key);
  IconData iconsName;
  String text1;
  String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          iconsName,
          size: 27,
        ),
        kwidgth15,
        Text(
          text2,
          style: style3,
        ),
      ],
    );
  }
}
