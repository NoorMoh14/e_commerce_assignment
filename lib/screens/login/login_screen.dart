import 'package:e_commerce_assignment/config/color.dart';
import 'package:e_commerce_assignment/screens/login/components/have_account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/login_form.dart';
import 'components/social_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          leading: IconButton(
            onPressed: (){
              Get.offNamed("/HomeScreen");
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.iconColor,
            ),
          ),
          elevation: 0,
        ),
        body:  SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: Get.height * .016),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: AppColors.blackTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Sign in with your email and password  \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: Get.height * .1),
                  const LoginForm(),
                  SizedBox(height: Get.height * .016),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        press: () {},
                        icon: "assets/icons/google-icon.svg",
                      ),
                      SocialCard(
                        press: () {},
                        icon: "assets/icons/facebook.svg",
                      ),
                      SocialCard(
                        press: () {},
                        icon: "assets/icons/twitter.svg",
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const HaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
