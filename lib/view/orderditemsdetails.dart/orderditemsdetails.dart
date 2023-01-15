import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/orderditemsdetails.dart/widgets/orderditemsdetailappbar.dart';
import 'package:eshop/view/orderditemsdetails.dart/widgets/orderditemsdetailsbody.dart';
import 'package:flutter/material.dart';

class ScreenOrderdItemsDetails extends StatelessWidget {
  const ScreenOrderdItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        children: const [
          OrderdItemsDetailsAppBar(),
          kheight10,
          OrderdItemsDetailsBody()
        ],
      ),
    );
  }
}
