import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/color.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, top: 15,bottom: 10,left: 10),
      height: Get.height * .01,
      width: Get.width *.12,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: IconButton(
        onPressed: (){
         Get.toNamed("/LoginScreen");
        },
        icon: Icon(
          Icons.login,
          color: AppColors.iconColor,
        ),
      ),
    );
  }
}
