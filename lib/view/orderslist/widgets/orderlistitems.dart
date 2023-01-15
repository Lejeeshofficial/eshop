import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/colors.dart';
import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/colorandconst/productScreen/stayle.dart';
import 'package:eshop/view/orderditemsdetails.dart/orderditemsdetails.dart';
import 'package:flutter/material.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < 4; i++)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenOrderdItemsDetails(),
                  ),
                );
              },
              child: Container(
                height: 110,
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        productImage(i),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              kheight10,
                              productName(),
                              kheight10,
                              priceRow()
                            ],
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            richText1(),
                            kheight10,
                            richText2(),
                            kheight10,
                            richText3(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Container productImage(int i) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(
        right: 15,
      ),
      child: Image.asset("lib/assets/${i + 1}.png"),
    );
  }

  Text productName() {
    return Text(
      "Queen Sandals",
      style: styletitle,
    );
  }

  Row priceRow() {
    return Row(
      children: [
        const Text(
          "Price : ",
          style: TextStyle(fontFamily: "RobotoSlab"),
        ),
        Text(
          "\$ 55",
          style: TextStyle(
            fontFamily: "RobotoSlab",
            fontSize: 18,
            color: appBarColor,
          ),
        ),
      ],
    );
  }

  RichText richText3() {
    return RichText(
      text: TextSpan(
        text: "Status : ",
        style: const TextStyle(fontFamily: "RobotoSlab", color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: "Orderd",
            style: TextStyle(
              fontFamily: "RobotoSlab",
              color: appBarColor,
              //fontSize: 18,
            ),
          )
        ],
      ),
    );
  }

  RichText richText2() {
    return RichText(
      text: TextSpan(
        text: "Date : ",
        style: const TextStyle(fontFamily: "RobotoSlab", color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: "03-Jan-2023",
            style: TextStyle(
              fontFamily: "RobotoSlab",
              color: appBarColor,
              //fontSize: 18,
            ),
          )
        ],
      ),
    );
  }

  RichText richText1() {
    return RichText(
      text: TextSpan(
        text: "Qty : ",
        style: const TextStyle(fontFamily: "RobotoSlab", color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: "3",
            style: TextStyle(
              fontFamily: "RobotoSlab",
              color: appBarColor,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
