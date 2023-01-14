import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:flutter/material.dart';

class WidgetReviewPayments extends StatelessWidget {
  const WidgetReviewPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          height: 50,
          decoration: BoxDecoration(
            color: white1,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Radio(
                    value: "",
                    groupValue: "",
                    onChanged: (index) {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Online Paymetns",
                    style: TextStyle(fontFamily: "RobotoSlab", fontSize: 17),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          height: 50,
          decoration: BoxDecoration(
            color: white1,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Radio(
                    value: 1,
                    groupValue: 0,
                    onChanged: (index) {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Cash On Delivery",
                    style: TextStyle(fontFamily: "RobotoSlab", fontSize: 17),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
