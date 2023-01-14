import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/view/address/widgets/addressappbar.dart';
import 'package:eshop/view/address/widgets/addresscontainer.dart';
import 'package:eshop/view/address/widgets/addressnavbar.dart';
import 'package:flutter/material.dart';

class ScreenAddress extends StatefulWidget {
  const ScreenAddress({super.key});

  @override
  State<ScreenAddress> createState() => _ScreenAddressState();
}

class _ScreenAddressState extends State<ScreenAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const WidgetAddressAppBar(),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: const [
                  WidgetAddressContainer(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AddressNavBar(),
    );
  }
}
