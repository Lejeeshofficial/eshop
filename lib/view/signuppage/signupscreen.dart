import 'package:eshop/colorandconst/loginscreen/color/colors.dart';
import 'package:eshop/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:eshop/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';

class ScreenSignup extends StatefulWidget {
  const ScreenSignup({super.key});

  @override
  State<ScreenSignup> createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign up",
          style: TextStyle(fontFamily: "RobotoSlab"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                  //keyboardType: TextInputType.number,
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
                  //keyboardType: TextInputType.number,
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
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenLoginpage(),
                    ),
                  ),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: red1, borderRadius: BorderRadius.circular(2)),
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
                          builder: (context) => ScreenBottomNavigation(),
                        ),
                      )),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Sign up with  ? ',
                      style: TextStyle(
                        color: black1,
                        fontFamily: "RobotoSlab",
                        fontSize: 15,
                        //fontWeight: FontWeight.w100,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Google",
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
            ],
          ),
        ),
      ),
    );
  }
}
