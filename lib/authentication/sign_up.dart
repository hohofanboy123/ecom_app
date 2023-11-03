import 'package:ecom_app/custom_btn.dart';
import 'package:ecom_app/custom_text_field.dart';
import 'package:ecom_app/size_config.dart';
import 'package:flutter/material.dart';

import '../route_name.dart';
import '../social_media_container.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                "Register account",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Complete your details or continue\nwith social media",
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
                  SizedBox(height: getHeight(30),),
                  const CustomTextField(
                    obsecure: true,
                    labelTxt: "Confirm Password",
                    hintTxt: "Re-enter your password",
                    icon: Icons.lock_outlined,
                  ),
                  SizedBox(height: getHeight(40),),
                  CustomButton(
                    text: "Continue",
                    press: (){
                      Navigator.pushNamed(context, RouteNames.otpVerification);
                    }
                  )
                ],
              ),
              SizedBox(height: getHeight(60),),
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
              Text(
                "By continuing your confirm that you agree",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,  
              )
            ],
          ),
        ),
      ),
    );
  }
}