import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    Key? key,
    required this.formfieldname,
    required this.error,
  }) : super(key: key);

  final String formfieldname;
  final bool error;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 20),
            child: Text(
              formfieldname,
              style: const TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 30.0,
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: error == false
                    ? null
                    : const Icon(Icons.warning_amber_outlined),
                hintStyle: const TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PasswordFieldCustom extends StatelessWidget {
  PasswordFieldCustom(
      {Key? key, this.pwdtext = "Password", this.visible = false})
      : super(key: key);

  String pwdtext = "Password";
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text(
              pwdtext,
              style: const TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 30.0,
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              autofocus: false,
              obscureText: true,
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.black),
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: visible
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                hintStyle: const TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
