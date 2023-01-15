import 'package:eshop/colorandconst/address/constants.dart';
import 'package:eshop/colorandconst/address/style.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/colorandconst/productScreen/colors.dart';
import 'package:eshop/colorandconst/productScreen/constants.dart';
import 'package:eshop/view/NewAddress/newaddress.dart';
import 'package:flutter/material.dart';

class AddressListContainer extends StatefulWidget {
  AddressListContainer({super.key});

  @override
  State<AddressListContainer> createState() => _AddressListContainerState();
}

class _AddressListContainerState extends State<AddressListContainer> {
  int num = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addressOne(context, 1),
        addressOne1(context, 2),
      ],
    );
  }

  Container addressOne1(BuildContext context, int i) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: 160,
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
              value: 1,
              groupValue: num,
              onChanged: (int? value) {
                setState(() {
                  num = value!;
                });
              },
            ),
            kaddresswidth10,
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: nameAndAddress(context),
            ),
            const Spacer(),
            deleteIcon(),
          ],
        ),
      ),
    );
  }

  Container addressOne(BuildContext context, int i) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: 160,
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
              value: 2,
              groupValue: num,
              onChanged: (int? value) {
                setState(() {
                  num = value!;
                });
              },
            ),
            kaddresswidth10,
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: nameAndAddress(context),
            ),
            const Spacer(),
            deleteIcon(),
          ],
        ),
      ),
    );
  }

  Column nameAndAddress(BuildContext context) {
    return Column(
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
        kheight10,
        editContainer(context)
      ],
    );
  }

  Padding deleteIcon() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Icon(
        Icons.delete,
        color: pink1,
      ),
    );
  }

  Container editContainer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(05),
        border: Border.all(
          color: pink1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(05.0),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScreenNewAddress(),
            ),
          ),
          child: Text(
            "Edit",
            style: editaddress,
          ),
        ),
      ),
    );
  }
}
