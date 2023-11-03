import 'package:ecom_app/constants.dart';
import 'package:ecom_app/custom_btn.dart';
import 'package:ecom_app/custom_text_field.dart';
import 'package:ecom_app/size_config.dart';
import 'package:flutter/material.dart';

import '../route_name.dart';
import '../social_media_container.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                "OTP Verification",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              RichText(
                text: 
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "We sent your code to +962 79 291 ***\nThis code will be expired in",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: " 00:13",
                        style: TextStyle(
                          color: mainColor,
                          fontSize: getWidth(15),
                          fontFamily: "Muli"
                        ),
                      )
                    ]
                  ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getHeight(150),),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OtpTextField(),
                      OtpTextField(),
                      OtpTextField(),
                      OtpTextField(),
                    ],
                  ),
                  SizedBox(height: getHeight(100),),
                  CustomButton(
                    text: "Continue",
                    press: (){
                      Navigator.pushNamed(context, RouteNames.completeProfile);
                    }
                  )
                ],
              ),
              SizedBox(height: getHeight(80),),
              const Text(
                "Resend OTP Code",
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.underline),  
              ),
            ],
          ),
        ),
      ),
    );
  }
}