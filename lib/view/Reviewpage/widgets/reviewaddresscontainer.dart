import 'package:eshop/colorandconst/address/constants.dart';
import 'package:eshop/colorandconst/address/style.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/colors.dart';
import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/view/NewAddress/newaddress.dart';
import 'package:flutter/material.dart';

class ReviewAddressContainer extends StatelessWidget {
  const ReviewAddressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: white1,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  onChanged: (index) {},
                ),
                kaddresswidth10,
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lejeesh k",
                        style: namestyle,
                      ),
                      const SizedBox(
                        height: 05,
                      ),
                      const Text(
                        "Kinyadka house , Golithottu post and \nvillage,Uppinangady,Karnataka,\npin 574229",
                        style: TextStyle(
                          wordSpacing: 0.4,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
