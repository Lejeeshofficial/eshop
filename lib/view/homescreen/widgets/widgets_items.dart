import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/cartscreen/cart_screen.dart';
import 'package:eshop/view/favouritescreen/favourite_screen.dart';
import 'package:eshop/view/product_discriptions.dart/product_page.dart';
import 'package:flutter/material.dart';

class WidgetItems extends StatelessWidget {
  WidgetItems(this.guest, {super.key});
  bool guest;
  List name = [
    'Sandals',
    'Watches',
    'Bags',
    'Bags',
    'HandBags',
    'Sandals',
    'Watches',
  ];

  List prices = [
    55,
    166,
    45,
    33,
    22,
    52,
    66,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        for (int i = 0; i < 7; i++)
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 10,
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: red1,
                        ),
                        child: const Text(
                          '-50%',
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            fontSize: 14,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (guest == false) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ScreenFavourite(),
                              ),
                            );
                          }
                        },
                        child: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.green,
                          size: 27,
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (guest == false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ScreenProductDiscription(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      "lib/assets/${i + 1}.png",
                      height: 100,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name[i],
                    style: TextStyle(fontFamily: 'RobotoSlab'),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Write the discription of the product ',
                    // style: TextStyle(fontFamily: 'RobotoSlab'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ ${prices[i]}',
                        style: const TextStyle(
                            color: red1,
                            fontFamily: 'RobotoSlab',
                            fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          if (guest == false) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ScreenCart(),
                              ),
                            );
                          }
                        },
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.green,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
