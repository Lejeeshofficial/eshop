import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/view/NewAddress/widgets/addressdetails.dart';
import 'package:eshop/view/NewAddress/widgets/contactinfo.dart';
import 'package:eshop/view/NewAddress/widgets/newaddressappbar.dart';
import 'package:eshop/view/NewAddress/widgets/newaddressnavbar.dart';
import 'package:flutter/material.dart';

class ScreenNewAddress extends StatelessWidget {
  const ScreenNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        children: const [
          NewAddressAppBar(),
          ContactInfo(),
          AddressDetails(),
        ],
      ),
      bottomNavigationBar: NewAddressNavBar(),
    );
  }
}
