import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/view/accountscreen/widgets/accounts_app_bar.dart';
import 'package:eshop/view/accountscreen/widgets/widget_container1.dart';
import 'package:eshop/view/accountscreen/widgets/widget_container2.dart';
import 'package:flutter/material.dart';

class ScreenAccount extends StatefulWidget {
  const ScreenAccount({super.key});

  @override
  State<ScreenAccount> createState() => _ScreenAccountState();
}

class _ScreenAccountState extends State<ScreenAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        children: [
          WidgetAccountAppBar(),
          WidgetContainer1(),
          // kheight10,
          WidgetContainer2(),
        ],
      ),
    );
  }
}
