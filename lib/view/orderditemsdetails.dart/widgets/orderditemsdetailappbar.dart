import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/stayle.dart';
import 'package:flutter/material.dart';

class OrderdItemsDetailsAppBar extends StatelessWidget {
  const OrderdItemsDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white1,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              size: 25,
              color: black1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Order Details",
              style: stylecartname,
            ),
          ),
          const Spacer(),
          // const Icon(
          //   Icons.more_vert,
          //   color: black1,
          //   size: 25,
          // )
        ],
      ),
    );
  }
}
