import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/address/style.dart';
import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/colors.dart';
import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/colorandconst/productScreen/stayle.dart';
import 'package:flutter/material.dart';

class OrderdItemsDetailsBody extends StatelessWidget {
  const OrderdItemsDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrderSummeryContainer1(),
        orderdSummeryContainer2(context),
      ],
    );
  }

  Container orderdSummeryContainer2(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: white1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                richText1(),
                const Spacer(),
                success(),
                kwidth10,
              ],
            ),
            kheight20,
            productDetails(),
            kheight20,
            shippingDetailsAndPayments(),
            kheight20,
            address(),
            kheight20,
            paymentsIndicator(context)
          ],
        ),
      ),
    );
  }

  Row paymentsIndicator(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: "Payments ",
            style: const TextStyle(
              fontFamily: "RobotoSlab",
              color: black1,
            ),
            children: [
              WidgetSpan(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .45,
                ),
              ),
              const TextSpan(
                text: " Online",
                style: TextStyle(
                  fontFamily: "RobotoSlab",
                  color: Colors.green,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Row address() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lejeesh k",
              style: namestyle,
            ),
            const SizedBox(
              height: 05,
            ),
            const Text(
              "Kinyadka house , Golithottu post and \nvillage,Uppinangady,Karnataka,\npin 574229",
              style: TextStyle(
                wordSpacing: 0.4,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row shippingDetailsAndPayments() {
    return Row(
      children: const [
        Text(
          "Shipping Address and Payment Methods",
          style: TextStyle(
            fontFamily: "RobotoSlab",
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Row productDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        productImage(1),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // kheight10,
              productName(),
              kheight5,
              priceRow(),
              kheight5,
              qty()
            ],
          ),
        ),
        //const Spacer(),
      ],
    );
  }

  Text success() {
    return const Text(
      "Success",
      style: TextStyle(
        fontFamily: "RobotoSlab",
        color: Colors.green,
        fontSize: 16,
      ),
    );
  }

  RichText richText1() {
    return RichText(
      text: TextSpan(
        text: "Delivered On",
        style: const TextStyle(
          fontFamily: "RobotoSlab",
          color: black1,
          fontSize: 16,
        ),
        children: [
          WidgetSpan(child: kwidth10),
          const TextSpan(
            text: "05-Jan-2023",
            style: TextStyle(
              fontFamily: "RobotoSlab",
              color: red1,
              fontSize: 16,
            ),
          )
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

  Row qty() {
    return Row(
      children: [
        const Text(
          "Qty : ",
          style: TextStyle(fontFamily: "RobotoSlab"),
        ),
        Text(
          "\$ 01",
          style: TextStyle(
            fontFamily: "RobotoSlab",
            //fontSize: 18,
            color: appBarColor,
          ),
        ),
      ],
    );
  }
}

class OrderSummeryContainer1 extends StatelessWidget {
  const OrderSummeryContainer1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: white1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichTextDetails(
              variable1: 'Order date',
              variable2: '03-Jan-2-23',
            ),
            kheight10,
            RichTextDetails(
              variable1: 'Order Id # ',
              variable2: "405-8090-03",
            ),
            kheight10,
            RichTextDetails(
              variable1: 'Order total',
              variable2: '\$ 55',
            ),
          ],
        ),
      ),
    );
  }
}

class RichTextDetails extends StatelessWidget {
  RichTextDetails({
    required this.variable1,
    required this.variable2,
    Key? key,
  }) : super(key: key);

  String variable1;
  String variable2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: variable1,
        style: const TextStyle(
          fontFamily: "RobotoSlab",
          color: black1,
        ),
        children: [
          const WidgetSpan(child: kwidth20),
          TextSpan(
            text: variable2,
            style: const TextStyle(
              fontFamily: "RobotoSlab",
              color: red1,
            ),
          )
        ],
      ),
    );
  }
}
