import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:eshop/view/loginscreen/loginscreenusingpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../colorandconst/loginscreen/color/colors.dart';

class ScreenOtp extends StatefulWidget {
  const ScreenOtp({super.key});

  @override
  State<ScreenOtp> createState() => _ScreenOtpState();
}

class _ScreenOtpState extends State<ScreenOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: white1,
        elevation: 1,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Text(
                  "Verify with OTP",
                  style: TextStyle(
                    color: black1,
                    fontFamily: "RobotoSlab",
                    fontSize: 20,
                    //fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Text(
                  "Sent via SMS to 9611693660",
                  style: TextStyle(
                    color: black1,
                    //fontFamily: "RobotoSlab",
                    fontSize: 13,
                    //fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 0, 0),
                child: OtpTextField(
                  mainAxisAlignment: MainAxisAlignment.start,
                  margin: EdgeInsets.only(right: 10),
                  //onCodeChanged: (value) {},
                  focusedBorderColor: red1,
                  fieldWidth: 60,
                  numberOfFields: 4,
                  borderColor: red1,
                  showFieldAsBox: true,
                  onSubmit: (value) => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ScreenBottomNavigation(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'Didn\'t receive OTP ? ',
                    style: TextStyle(
                      color: black1,
                      fontFamily: "RobotoSlab",
                      fontSize: 15,
                      //fontWeight: FontWeight.w100,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Resend OTP",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenloginPassword(),
                      )),
                  child: RichText(
                    text: const TextSpan(
                      text: ' Login Using  ',
                      style: TextStyle(
                        color: black1,
                        fontFamily: "RobotoSlab",
                        fontSize: 15,
                        //fontWeight: FontWeight.w100,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Password",
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
    );
  }
}
