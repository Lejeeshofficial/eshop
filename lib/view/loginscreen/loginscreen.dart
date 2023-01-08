import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:eshop/view/otpscreen/otp_screen.dart';
import 'package:eshop/view/signuppage/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenLoginpage extends StatefulWidget {
  const ScreenLoginpage({super.key});

  @override
  State<ScreenLoginpage> createState() => _ScreenLoginpageState();
}

class _ScreenLoginpageState extends State<ScreenLoginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset("lib/animations/132033-green-login.json"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Row(
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                          color: black1,
                          fontFamily: "RobotoSlab",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "or",
                        style: TextStyle(
                          color: black1,
                          fontFamily: "RobotoSlab",
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "SignUp",
                        style: TextStyle(
                          color: black1,
                          fontFamily: "RobotoSlab",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ScreenBottomNavigation(),
                          ),
                        ),
                        child: const Text(
                          "Skip login",
                          style: TextStyle(
                            color: red1,
                            fontFamily: "RobotoSlab",
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(02),
                        borderSide: const BorderSide(
                          color: red1,
                        ),
                      ),
                      fillColor: white1,
                      labelText: ''' Mobile Number *''',
                      labelStyle: const TextStyle(
                        color: black1,
                        fontFamily: "RobotoSlab",
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      prefixText: '''+91 | ''',
                      prefixStyle: const TextStyle(
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
                  child: RichText(
                    text: const TextSpan(
                      text: 'By continuing, I agree to the  ',
                      style: TextStyle(
                        color: black1,
                        fontFamily: "RobotoSlab",
                        fontSize: 15,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms of Use',
                          style: TextStyle(
                            color: red1,
                            fontFamily: "RobotoSlab",
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: ' &',
                          style: TextStyle(
                            color: black1,
                            fontFamily: "RobotoSlab",
                            fontSize: 15,
                            //fontWeight: FontWeight.w100,
                          ),
                        ),
                        TextSpan(
                          text: ' Privacy Policy ',
                          style: TextStyle(
                            color: red1,
                            fontFamily: "RobotoSlab",
                            fontSize: 15,
                            //fontWeight: FontWeight.w100,
                          ),
                        ),
                        TextSpan(
                          text: ' .',
                          style: TextStyle(
                            color: black1,
                            fontFamily: "RobotoSlab",
                            fontSize: 20,
                            //fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenOtp(),
                      ),
                    ),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: red1, borderRadius: BorderRadius.circular(2)),
                      child: const Center(
                        child: Text(
                          "CONTINUE",
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
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenSignup(),
                      ),
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Don\'t have any account ? ',
                        style: TextStyle(
                          color: black1,
                          fontFamily: "RobotoSlab",
                          fontSize: 15,
                          //fontWeight: FontWeight.w100,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Sign Up",
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
