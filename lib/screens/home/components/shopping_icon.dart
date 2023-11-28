import 'package:e_commerce_assignment/config/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingIcon extends StatelessWidget {
  const ShoppingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, top: 15,bottom: 10),
          height: Get.height * .1,
          width: Get.width *.12,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(25),
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: AppColors.iconColor,
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 18,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: AppColors.redColor,
              shape: BoxShape.circle,
              border: Border.all(
                  width: 1.5,
                  color: AppColors.whiteColor),
            ),
            child: Center(
              child: Text(
                "3",
                style: TextStyle(
                  fontSize: 10,
                  height: 1,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
