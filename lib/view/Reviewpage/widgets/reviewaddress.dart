import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/view/Reviewpage/widgets/reviewaddresscontainer.dart';
import 'package:eshop/view/address/widgets/addresscontainer.dart';
import 'package:flutter/material.dart';

class ReviewAddress extends StatelessWidget {
  const ReviewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "DELIVERY ADDRESS",
              style: TextStyle(
                fontFamily: "RobotoSlab",
                fontSize: 15,
              ),
            ),
          ),
          kheight10,
          ReviewAddressContainer(),
        ],
      ),
    );
  }
}
