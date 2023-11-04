import 'package:flutter/material.dart';

import 'constants.dart';
import 'size_config.dart';

class CustomTextField extends StatelessWidget{
  final String labelTxt;
  final String hintTxt;
  final IconData icon;
  final String? type;
  final bool? obsecure;

  const CustomTextField({
    super.key,
    required this.labelTxt,
    required this.hintTxt,
    required this.icon,
    this.obsecure,
    this.type,
    });
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type == "email" ? TextInputType.emailAddress : type == "phone" ? TextInputType.phone : null,
      obscureText: obsecure == true ? true : false,
      decoration: 
        InputDecoration(
          suffixIcon: Icon(icon),
          labelText: labelTxt,
          hintText: hintTxt,
        ),
    );
  }
}

class OtpTextField extends StatelessWidget {
  const OtpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      width: getWidth(60),
      child: TextFormField(
        style: const TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: getWidth(15)),
          border: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getWidth(15)),
    borderSide: const BorderSide(color: textColor),
  );
}