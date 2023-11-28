import 'package:e_commerce_assignment/components/ads_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdsSlider extends StatelessWidget {
  const AdsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = Get.width ;
    double containerMargin = 5;
    // Calculate the initial scroll offset to center on the third element
    double initialScrollOffset =
        1.22 * (containerWidth + containerMargin) - Get.width / 2;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: ScrollController(initialScrollOffset: initialScrollOffset),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: containerMargin),
            width: Get.width * 0.8,
            height: Get.height * 0.22,
            decoration: buildBoxDecoration(context),
            child: const AdsCard(
              image: "assets/images/smart_phone.png",
              title: "Smart Phone",
              subTitle: "18 Brands",
            ),

          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: containerMargin),
            width: Get.width * 0.8,
            height: Get.height * 0.22,
            decoration: buildBoxDecoration(context),
            child: const AdsCard(
              image: "assets/images/clothes.png",
              title: "Fashion",
              subTitle: "25 Brands",
            ),

          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: containerMargin),
            width: Get.width * 0.8,
            height: Get.height * 0.22,
            decoration: buildBoxDecoration(context),
            child: const AdsCard(
              image: "assets/images/smart_phone.png",
              title: "Smart Phone",
              subTitle: "18 Brands",
            ),

          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration(BuildContext context) {
    return BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).colorScheme.tertiaryContainer, // Replace with your color
          );
  }


}
