import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/stayle.dart';
import 'package:eshop/view/cartscreen/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductNavBar extends StatelessWidget {
  const ProductNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: white1,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$ 55",
              style: styletotal,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenCart(),
                    ),
                  );
                },
                icon: const Icon(
                  CupertinoIcons.cart_badge_plus,
                  size: 30,
                ),
                label: Text("Add To Cart", style: addtocart))
          ],
        ),
      ),
    );
  }
}
