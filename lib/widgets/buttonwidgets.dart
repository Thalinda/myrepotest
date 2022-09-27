import 'package:flutter/material.dart';

class ArrowForwarButton extends StatelessWidget {
  ArrowForwarButton({Key? key, required this.paddingFromTop}) : super(key: key);
  double paddingFromTop;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * paddingFromTop),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            // boxShadow:BoxShadow(offset:) ,
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
