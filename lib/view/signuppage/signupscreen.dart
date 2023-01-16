import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/main.dart';
import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:eshop/view/loginscreen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ScreenSignup extends StatefulWidget {
  const ScreenSignup({super.key});

  @override
  State<ScreenSignup> createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {
  final formkey = GlobalKey<FormState>();
  TextEditingController mobilenumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ScreenBottomNavigation();
          } else {
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Sign up",
                  style: TextStyle(fontFamily: "RobotoSlab"),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextFormField(
                            controller: mobilenumbercontroller,
                            validator: (value) {
                              if (value!.isEmpty || value.length < 10) {
                                return "Mobile number must be 10 digits";
                              }
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
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                          child: TextFormField(
                            controller: passwordcontroller,
                            obscureText: true,
                            validator: (valuep) {
                              if (valuep!.isEmpty || valuep.length < 6) {
                                return "Password must be 6 charecter";
                              }
                            },
                            //keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(02),
                                borderSide: const BorderSide(
                                  color: red1,
                                ),
                              ),
                              fillColor: white1,
                              labelText: '''Create Password *''',
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
                            controller: confirmpasswordcontroller,
                            validator: (value) {
                              if (value!.isEmpty ||
                                  value != passwordcontroller.text) {
                                return "Password must be match";
                              }
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(02),
                                borderSide: const BorderSide(
                                  color: red1,
                                ),
                              ),
                              fillColor: white1,
                              labelText: '''Confirm Password *''',
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
                            controller: namecontroller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter the valid name";
                              }
                            },
                            //keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(02),
                                borderSide: const BorderSide(
                                  color: red1,
                                ),
                              ),
                              fillColor: white1,
                              labelText: '''Full name''',
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
                            controller: emailcontroller,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return "Enter the valid email address";
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(02),
                                borderSide: const BorderSide(
                                  color: red1,
                                ),
                              ),
                              fillColor: white1,
                              labelText: '''E-mail''',
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
                            onTap: () {
                              if (formkey.currentState!.validate()) {
                                signUp();
                              }
                            },
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const ScreenLoginpage(),
                            //   ),
                            // ),
                            child: Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: red1,
                                  borderRadius: BorderRadius.circular(2)),
                              child: const Center(
                                child: Text(
                                  "CRREATE ACCOUNT",
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
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: InkWell(
                            onTap: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ScreenBottomNavigation(),
                                  ),
                                )),
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Already have an account ? ',
                                  style: TextStyle(
                                    color: black1,
                                    fontFamily: "RobotoSlab",
                                    fontSize: 15,
                                    //fontWeight: FontWeight.w100,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " Login ",
                                      style: TextStyle(
                                        color: red1,
                                        fontFamily: "RobotoSlab",
                                        fontSize: 17,
                                        //fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ],
                                ),
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
        });
  }

  void signUp() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passwordcontroller.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.pop((route) => route.ifFirst);
  }
}
