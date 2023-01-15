import 'package:eshop/colorandconst/address/style.dart';
import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/NewAddress/newaddress.dart';
import 'package:flutter/material.dart';

class AddressListNavbar extends StatelessWidget {
  const AddressListNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: white1,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenNewAddress(),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white1,
                    border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Add New Address",
                    style: addnewaddress,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
