import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:flutter/material.dart';

class ScreenloginPassword extends StatefulWidget {
  const ScreenloginPassword({super.key});

  @override
  State<ScreenloginPassword> createState() => _ScreenloginPasswordState();
}

class _ScreenloginPasswordState extends State<ScreenloginPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Text(
                  "Login to your account",
                  style: TextStyle(
                    color: black1,
                    fontFamily: "RobotoSlab",
                    fontSize: 20,
                    //fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: TextFormField(
                  //keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(02),
                      borderSide: const BorderSide(
                        color: red1,
                      ),
                    ),
                    fillColor: white1,
                    labelText: '''E-mail or Mobile Number *''',
                    labelStyle: const TextStyle(
                      color: black1,
                      fontFamily: "RobotoSlab",
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: TextFormField(
                  //keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(02),
                      borderSide: const BorderSide(
                        color: red1,
                      ),
                    ),
                    fillColor: white1,
                    labelText: '''Password *''',
                    labelStyle: const TextStyle(
                      color: black1,
                      fontFamily: "RobotoSlab",
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenBottomNavigation(),
                    ),
                  ),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: red1, borderRadius: BorderRadius.circular(2)),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: white1,
                          fontFamily: "RobotoSlab",
                          fontSize: 20,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                child: RichText(
                  text: const TextSpan(
                    text: '  Forgot your passoword ? ',
                    style: TextStyle(
                      color: black1,
                      fontFamily: "RobotoSlab",
                      fontSize: 15,
                      //fontWeight: FontWeight.w100,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Reset here",
                        style: TextStyle(
                          color: red1,
                          fontFamily: "RobotoSlab",
                          fontSize: 15,
                          //fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
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
