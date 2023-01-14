import 'package:eshop/colorandconst/address/colors.dart';
import 'package:eshop/colorandconst/address/constants.dart';
import 'package:eshop/colorandconst/address/style.dart';
import 'package:flutter/material.dart';

class WidgetAddressAppBar extends StatelessWidget {
  const WidgetAddressAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: whiteAddress,
      ),
      //margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back,
                size: 27,
              ),
            ),
          ),
          kaddresswidth10,
          Text(
            "Address",
            style: titlestyle,
          ),
        ],
      ),
    );
  }
}
