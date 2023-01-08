import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenCart extends StatefulWidget {
  const ScreenCart({super.key});

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping bag',
          style: TextStyle(fontFamily: 'RobotoSlab'),
        ),
      ),
      body: Column(
        children: [
          Lottie.asset('lib/animations/106964-shake-a-empty-box.json'),
          const Text(
            'Bag is empty',
            style: TextStyle(fontFamily: 'RobotoSlab', color: red1),
          )
        ],
      ),
    );
  }
}
