import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/cartscreen/widgets/cart_appbar.dart';
import 'package:eshop/view/cartscreen/widgets/cart_bottom_navBar.dart';
import 'package:eshop/view/cartscreen/widgets/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenCart extends StatefulWidget {
  const ScreenCart({super.key});

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  @override
  Widget build(BuildContext context) {
    final height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            height: height1 * 1,
            padding: const EdgeInsets.only(
              top: 15,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: background,
            ),
            child: Column(
              children: const [
                WidgetCartItems(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}

// body: Column(
//   children: [
//     Lottie.asset('lib/animations/106964-shake-a-empty-box.json'),
//     const Text(
//       'Bag is empty',
//       style: TextStyle(fontFamily: 'RobotoSlab', color: red1),
//     )
//   ],
// ),
