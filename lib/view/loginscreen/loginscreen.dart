import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:eshop/view/loginscreen/loginscreenusingpassword.dart';
import 'package:eshop/view/otpscreen/otp_screen.dart';
import 'package:eshop/view/signuppage/signupscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenLoginpage extends StatefulWidget {
  const ScreenLoginpage({super.key});

  static String verify = "";

  @override
  State<ScreenLoginpage> createState() => _ScreenLoginpageState();
}

class _ScreenLoginpageState extends State<ScreenLoginpage> {
  TextEditingController countrycode = TextEditingController();
  var phonenumber = '';
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    countrycode.text = "+91";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Text("something went wrong");
          } else if (snapshot.hasData) {
            return const ScreenBottomNavigation();
          }
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      lottieimage(),
                      loginorsignuprow(context),
                      numbertextformfield(),
                      //------------------------------------------//
                      loginusingemailandpassowd(context),
                      //------------------------------------------//
                      termsandprivacypolicy(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            await FirebaseAuth.instance.verifyPhoneNumber(
                              phoneNumber: '${countrycode.text + phonenumber}',
                              verificationCompleted:
                                  (PhoneAuthCredential credential) {},
                              verificationFailed: (FirebaseAuthException e) {},
                              codeSent:
                                  (String verificationId, int? resendToken) {
                                ScreenLoginpage.verify = verificationId;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ScreenOtp()),
                                    (route) => false);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => ScreenOtp(),
                                //   ),
                                // );
                              },
                              codeAutoRetrievalTimeout:
                                  (String verificationId) {},
                            );
                          },

                          //------------------------------//

                          child: continuebutton(context),
                        ),
                      ),
                      signuprow(context),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  SizedBox lottieimage() {
    return SizedBox(
      height: 300,
      width: 300,
      child: Lottie.asset("lib/animations/132033-green-login.json"),
    );
  }

  Padding signuprow(BuildContext context) {
    return Padding(
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
    );
  }

  Container continuebutton(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(color: red1, borderRadius: BorderRadius.circular(2)),
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
    );
  }

  Padding termsandprivacypolicy() {
    return Padding(
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
    );
  }

  Padding loginusingemailandpassowd(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
      child: InkWell(
        onTap: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => const ScreenloginPassword()),
            (route) => false),
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
                text: " Email/Password",
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
    );
  }

  Padding numbertextformfield() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: Form(
        child: TextFormField(
          validator: ((value) {
            if (value!.isEmpty || value.length < 10) {
              return "Number must be 10 digits";
            }
          }),
          onChanged: (value) {
            phonenumber = value;
          },
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
    );
  }

  Padding loginorsignuprow(BuildContext context) {
    return Padding(
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
                builder: (context) => const ScreenBottomNavigation(),
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
    );
  }
}
