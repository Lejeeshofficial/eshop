import 'package:eshop/colorandconst/splashScreen/colors/colors.dart';
import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:eshop/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // TODO: implement initState
    splashtimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashscreenimage(context),
    );
  }

  splashscreenimage(BuildContext context) {
    final height1 = MediaQuery.of(context).size.height;
    final width1 = MediaQuery.of(context).size.width;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            // color: SBgcolor1,
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                // SBgcolor1,
                // SBgcolor2,
                Color(0xffE72744),
                Color(0xffF13AB1),
              ],
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: height1 * .3,
            ),
            Container(
              // height: height1 * .5,
              width: width1 * .6,
              child: Lottie.asset(
                "lib/animations/114601-buying-something-successfully-from-app.json",
              ),
            ),
            SizedBox(
              height: height1 * .05,
            ),
            Text(
              "lets shopiii",
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: textcolor1,
              ),
            )
          ],
        ),
      ],
    );
  }

  Future<void> splashtimer() async {
    await Future.delayed(
      const Duration(
        seconds: 4,
      ),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: ((context) => ScreenLoginpage()),
      ),
    );
  }
}
