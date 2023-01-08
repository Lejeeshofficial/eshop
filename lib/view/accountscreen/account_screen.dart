import 'package:eshop/view/accountscreen/widgets/accounts_app_bar.dart';
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
      body: ListView(
        children: [
          WidgetAccountAppBar(),
          Container(),
        ],
      ),
    );
  }
}
