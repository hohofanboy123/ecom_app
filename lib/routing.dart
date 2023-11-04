import 'package:ecom_app/authentication/complete_profile.dart';
import 'package:ecom_app/authentication/forget_password.dart';
import 'package:ecom_app/authentication/otp_verify.dart';
import 'package:ecom_app/authentication/sign_up.dart';
import 'package:ecom_app/boarding/boarding.dart';
import 'package:ecom_app/route_name.dart';
import 'package:ecom_app/authentication/sign_in.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  RouteNames.boarding:        (context) => const BoardingPage(),
  RouteNames.signIn:          (context) => const SignInScreen(),
  RouteNames.signUp:          (context) => const SignUpScreen(),
  RouteNames.otpVerification: (context) => const OtpVerification(),
  RouteNames.completeProfile: (context) => const CompleteProfile(),
  RouteNames.forgetPassword:  (context) => const ForgetPassword(),
};