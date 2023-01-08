import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:flutter/material.dart';

class WidgetCategories2 extends StatelessWidget {
  WidgetCategories2({super.key});

  List name = [
    'Sandals',
    'Watches',
    'Bags',
    'Bags',
    'HandBags',
    'Sandals',
    'Watches',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          for (int i = 0; i < 7; i++)
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: red1),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/assets/${i + 1}.png',
                      width: 60,
                      height: 60,
                    ),
                    Text(
                      name[i],
                      style: const TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
