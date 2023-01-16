import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:flutter/material.dart';

class WidgetReviewPayments extends StatefulWidget {
  WidgetReviewPayments({super.key});

  @override
  State<WidgetReviewPayments> createState() => _WidgetReviewPaymentsState();
}

class _WidgetReviewPaymentsState extends State<WidgetReviewPayments> {
  int? num;

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
                    value: 1,
                    groupValue: num,
                    onChanged: (value) {
                      setState(() {
                        num = value;
                      });
                    },
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
                    value: 2,
                    groupValue: num,
                    onChanged: (value) {
                      setState(() {
                        num = value;
                      });
                    },
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
