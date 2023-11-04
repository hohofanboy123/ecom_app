import 'package:ecom_app/custom_btn.dart';
import 'package:ecom_app/custom_text_field.dart';
import 'package:ecom_app/size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../route_name.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: getHeight(50),),
              Text(
                "Forgot Password",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Please enter your email and we will send\nyou a link to return to your account",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getHeight(80),),
              Column(
                children: [
                  const CustomTextField(
                    type: "email",
                    labelTxt: "Email",
                    hintTxt: "Enter your email",
                    icon: Icons.email_outlined,
                  ),
                  SizedBox(height: getHeight(100),),
                  CustomButton(
                    text: "Continue",
                    press: (){
                      Navigator.pushNamed(context, RouteNames.otpVerification);
                    }
                  )
                ],
              ),
              SizedBox(height: getHeight(100),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.signUp);
                    },
                    child: const Text("Sign up", style: TextStyle(color: mainColor),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}