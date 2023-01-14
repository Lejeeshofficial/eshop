import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/view/Reviewpage/widgets/payments.dart';
import 'package:flutter/material.dart';

class ReviewPagePayments extends StatelessWidget {
  const ReviewPagePayments({super.key});

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
              "PAYMENT METHODS ",
              style: TextStyle(
                fontFamily: "RobotoSlab",
                fontSize: 15,
              ),
            ),
          ),
          kheight10,
          WidgetReviewPayments(),
        ],
      ),
    );
  }
}
