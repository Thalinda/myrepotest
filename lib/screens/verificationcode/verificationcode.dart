import 'package:boillerplt_v2/widgets/buttonwidgets.dart';
import 'package:boillerplt_v2/widgets/textFieldwidgets.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

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
                      const Text("Rest Password!",
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Text(
                          "Set the new password to your account so,you can login and access all features ",
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Container(
                        child: VerificationCode(
                          textStyle:
                              TextStyle(fontSize: 20.0, color: Colors.black),
                          keyboardType: TextInputType.number,
                          underlineColor: Colors
                              .white, // If this is null it will use primaryColor: Colors.red from Theme
                          length: 4,
                          itemSize: 55,
                          fillColor: Colors.white,
                          margin: EdgeInsets.all(10),
                          cursorColor: Colors
                              .black, // If this is null it will default to the ambient
                          // clearAll is NOT required, you can delete it
                          // takes any widget, so you can implement your design
                          clearAll: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Clear',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                          ),
                          onCompleted: (String value) {},
                          onEditing: (bool value) {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                  child: Column(children: <Widget>[
                RaisedButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: const Text('Show SnackBar'),
                    onPressed: () {
                      var snackBar = SnackBar(
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.ice_skating),
                                ),
                              ),
                              const Text("This is warning toast message")
                            ],
                          ),
                        ),
                        backgroundColor: const Color.fromRGBO(242, 141, 60, 1),
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.all(50),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }),
              ])),
              ArrowForwarButton(paddingFromTop: 0.47)
            ],
          ),
        ],
      ),
    );
  }
}
