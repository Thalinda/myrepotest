import 'package:boillerplt_v2/widgets/buttonwidgets.dart';
import 'package:boillerplt_v2/widgets/textFieldwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String username = "Username";
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(65, 169, 224, 1),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))
                  // borderRadius: BorderRadiusGeometry()
                  ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.08,
                    left: 32,
                    right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Welcome Back !",
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                        "Sign with your email and password Or google account to continue!",
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.09,
                    ),
                    TextFormFieldCustom(formfieldname: username, error: false),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    PasswordFieldCustom()
                  ],
                ),
              ),
            ),
            ArrowForwarButton(
              paddingFromTop: 0.67,
            )
          ],
        ),
        Expanded(
            child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text("or continue with"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SignInButton(
                Buttons.Google,
                text: "Sign up with Google",
                onPressed: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  "By Continuing your confirm that you agree with our Terms and conditions",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
