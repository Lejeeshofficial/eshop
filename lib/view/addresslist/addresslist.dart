import 'package:eshop/colorandconst/accountsScreen/colors.dart';
import 'package:eshop/view/addresslist/widgets/addresslistappbar.dart';
import 'package:eshop/view/addresslist/widgets/addresslistcontainer.dart';
import 'package:eshop/view/addresslist/widgets/addresslistnavbar.dart';
import 'package:flutter/material.dart';

class ScreenAddressList extends StatelessWidget {
  const ScreenAddressList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AddressListAppBar(),
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
                children: [
                  AddressListContainer(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AddressListNavbar(),
    );
  }
}
