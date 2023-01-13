import 'package:eshop/colorandconst/accountsScreen/styles.dart';
import 'package:eshop/view/accountscreen/widgets/widget_rowEach.dart';
import 'package:flutter/material.dart';

class WidgetContainer2 extends StatefulWidget {
  const WidgetContainer2({super.key});

  @override
  State<WidgetContainer2> createState() => _WidgetContainer2State();
}

class _WidgetContainer2State extends State<WidgetContainer2> {
  @override
  Widget build(BuildContext context) {
    final height1 = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Container(
        height: height1 * .26,
        decoration: boxstyle1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RowsEach(
                iconsName: Icons.person,
                text2: "Contact Us",
                text1: "Help regarding your purchase",
              ),
            ),
            dottedline,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RowsEach(
                iconsName: Icons.quiz_outlined,
                text2: "FAQ",
                text1: "Frequently Asked Questions",
              ),
            ),
            dottedline,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RowsEach1(
                iconsName: Icons.location_on_outlined,
                text2: "Privacy Policy",
                text1: "",
              ),
            ),
            dottedline,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RowsEach1(
                iconsName: Icons.toc,
                text2: "Terms Conditions",
                text1: "",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
