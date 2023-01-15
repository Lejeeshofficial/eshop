import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:eshop/view/accountscreen/widgets/widget_rowEach.dart';
import 'package:eshop/view/addresslist/addresslist.dart';
import 'package:eshop/view/orderslist/orderslist.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class WidgetContainer1 extends StatefulWidget {
  const WidgetContainer1({super.key});

  @override
  State<WidgetContainer1> createState() => _WidgetContainer1State();
}

class _WidgetContainer1State extends State<WidgetContainer1> {
  @override
  Widget build(BuildContext context) {
    final height1 = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
      child: Container(
        height: height1 * .28,
        decoration: boxstyle1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenOrdersList(),
                  ),
                ),
                child: RowsEach(
                  iconsName: Icons.shopping_cart_checkout_outlined,
                  text2: "Orders",
                  text1: "Check Your Order status",
                ),
              ),
            ),
            dottedline,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenAddressList(),
                  ),
                ),
                child: RowsEach(
                  iconsName: Icons.location_on_outlined,
                  text2: "Address",
                  text1: "Add Your Address",
                ),
              ),
            ),
            dottedline,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RowsEach(
                iconsName: Icons.privacy_tip_outlined,
                text2: "Forget Password",
                text1: "Change Your password",
              ),
            ),
            dottedline,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RowsEach(
                iconsName: Icons.camera_alt_outlined,
                text2: "Edit Profile",
                text1: "Change Your Name and Profile image",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
