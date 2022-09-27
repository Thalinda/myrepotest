import 'package:boillerplt_v2/widgets/buttonwidgets.dart';
import 'package:boillerplt_v2/widgets/textFieldwidgets.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          actions: [
            Transform.rotate(
              angle: 45 * math.pi / 180,
              child: const IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ),
          ],
          elevation: 0,
          backgroundColor: const Color.fromRGBO(
            65,
            169,
            224,
            1,
          )),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.5,
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
                          top: MediaQuery.of(context).size.height * 0.03,
                          left: 32,
                          right: 32),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Forgot Password!",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            const Text(
                                "Enter your email address and you will recive the passowrd rest instruction shortly",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.09,
                            ),
                            const TextFormFieldCustom(
                                formfieldname: "Emaill Address", error: false)
                          ]))),
              ArrowForwarButton(paddingFromTop: 0.47)
            ],
          ),
        ],
      ),
    );
  }
}
