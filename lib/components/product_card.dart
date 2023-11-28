import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../config/color.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});
  final bool isFavourite = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 200,
      width: 165,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.bgCardColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/images/ps4_console_white.png"),
            ),
            SizedBox(height: Get.height * .01),
            Text(
              "Wireless Controller for PS4™",
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$64.99",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    height: Get.height * .03,
                    width: Get.width * .06,
                    decoration: BoxDecoration(
                      color: isFavourite
                          ? AppColors.primaryColor.withOpacity(0.15)
                          : AppColors.secondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/heart_icon_fill.svg",
                      colorFilter: ColorFilter.mode(
                          isFavourite
                              ? AppColors.redColor
                              : AppColors.whiteColor,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
