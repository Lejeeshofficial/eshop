import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/colorandconst/accountsScreen/constants.dart';
import 'package:eshop/view/Reviewpage/widgets/reviewaddress.dart';
import 'package:eshop/view/Reviewpage/widgets/reviewnavbar.dart';
import 'package:eshop/view/Reviewpage/widgets/reviewpageappbar.dart';
import 'package:eshop/view/Reviewpage/widgets/reviewpagepayments.dart';
import 'package:eshop/view/address/widgets/addresscontainer.dart';
import 'package:flutter/material.dart';

class ScreenReviewPage extends StatelessWidget {
  const ScreenReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        children: const [
          ReviewPageAppBar(),
          kheight10,
          ReviewAddress(),
          kheight10,
          ReviewPagePayments(),
        ],
      ),
      bottomNavigationBar: const ReviewNavBar(),
    );
  }
}
