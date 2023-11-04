import 'package:ecom_app/custom_btn.dart';
import 'package:ecom_app/custom_text_field.dart';
import 'package:ecom_app/size_config.dart';
import 'package:flutter/material.dart';

import '../route_name.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

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
                "Complete Profile",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Complete your details or continue\nwith social media",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getHeight(40),),
              Column(
                children: [
                  const CustomTextField(
                    labelTxt: "First Name",
                    hintTxt: "Enter your first name",
                    icon: Icons.person_outlined,
                  ),
                  SizedBox(height: getHeight(30),),
                  const CustomTextField(
                    labelTxt: "Last Name",
                    hintTxt: "Enter your first name",
                    icon: Icons.person_outlined,
                  ),
                  SizedBox(height: getHeight(30),),
                  const CustomTextField(
                    labelTxt: "Phone Number",
                    hintTxt: "Enter your phone number",
                    icon: Icons.phone,
                  ),
                  SizedBox(height: getHeight(30),),
                  const CustomTextField(
                    labelTxt: "Address",
                    hintTxt: "Enter your address",
                    icon: Icons.location_on_outlined,
                  ),
                  SizedBox(height: getHeight(40),),
                  CustomButton(
                    text: "Continue",
                    press: (){
                      
                    }
                  ),
                ],
              ),
              SizedBox(height: getHeight(60),),
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