import 'package:eshop/colorandconst/loginScreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/stayle.dart';
import 'package:eshop/view/address/Address.dart';
import 'package:flutter/material.dart';

class NewAddressNavBar extends StatelessWidget {
  const NewAddressNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(25),
        ),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return const ScreenAddress();
              },
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Container(
              alignment: Alignment.center,
              height: 20,
              width: double.infinity,
              decoration: BoxDecoration(
                color: red1,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "Save",
                style: style2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
