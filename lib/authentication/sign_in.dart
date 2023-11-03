import 'package:ecom_app/constants.dart';
import 'package:ecom_app/custom_btn.dart';
import 'package:ecom_app/custom_text_field.dart';
import 'package:ecom_app/size_config.dart';
import 'package:flutter/material.dart';

import '../route_name.dart';
import '../social_media_container.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                "Welcome back!",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Sign in with your email and password\nor continue with social media",
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
                  SizedBox(height: getHeight(30),),
                  const CustomTextField(
                    obsecure: true,
                    labelTxt: "Password",
                    hintTxt: "Enter your password",
                    icon: Icons.lock_outlined,
                  ),
                  const Row(
                    children: [
                      CheckBoxExample(),
                      Text("Remember me"),
                      Spacer(),
                      Text("Forgot password?", style: TextStyle(decoration: TextDecoration.underline),),
                    ],
                  ),
                  SizedBox(height: getHeight(20),),
                  CustomButton(
                    text: "Continue",
                    press: (){}
                  )
                ],
              ),
              SizedBox(height: getHeight(50),),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaContainer(
                    icon: "assets/icons/google-icon.svg",
                  ),
                  SocialMediaContainer(
                    icon: "assets/icons/facebook-2.svg",
                  ),SocialMediaContainer(
                    icon: "assets/icons/twitter.svg",
                  )
                ],
              ),
              SizedBox(height: getHeight(20),),
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
              SizedBox(height: getHeight(20),),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool? remember = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: remember,
      activeColor: mainColor,
      onChanged: (value) {
        setState(() {
          remember = value;
        });
      },
    );
  }
}