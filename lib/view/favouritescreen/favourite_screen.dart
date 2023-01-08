import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenFavourite extends StatelessWidget {
  const ScreenFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: const Text(
                  'Favourites',
                  style: TextStyle(
                      fontFamily: 'RobotoSlab', fontSize: 20, color: red1),
                ),
              ),
              Center(
                child: Container(
                  // height: 300,
                  child: Lottie.asset(
                      'lib/animations/106964-shake-a-empty-box.json'),
                ),
              ),
              const Text(
                "Empty box",
                style: TextStyle(
                    fontFamily: 'RobotoSlab', fontSize: 20, color: red1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
