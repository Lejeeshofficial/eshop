import 'package:flutter/material.dart';

class WidgetCategories extends StatelessWidget {
  WidgetCategories({super.key});

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
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 7; i++)
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/${i + 1}.png',
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    name[i],
                    style: const TextStyle(fontFamily: 'RobotoSlab'),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
