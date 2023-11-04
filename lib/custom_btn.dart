import 'package:ecom_app/constants.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: Colors.white,
          backgroundColor: mainColor,
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getWidth(20),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
