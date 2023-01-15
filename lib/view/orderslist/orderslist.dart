import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/view/orderslist/widgets/orderlistitems.dart';
import 'package:eshop/view/orderslist/widgets/orderslistappbar.dart';
import 'package:flutter/material.dart';

class ScreenOrdersList extends StatelessWidget {
  const ScreenOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        children: const [
          OrdersListAppBar(),
          kheight10,
          OrderListItems(),
        ],
      ),
    );
  }
}
