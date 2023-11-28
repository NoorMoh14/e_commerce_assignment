import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdsCard extends StatelessWidget {
  final String image, title, subTitle;

  const AdsCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset(
            image,
            width: Get.width * 0.8,
            height: Get.height * 0.22,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: Get.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.5),
              ),
            ],
          ),
        ),
        SizedBox(
          width: Get.width * 0.8,
          child: ListTile(
              title: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              contentPadding: const EdgeInsets.only(top: 10, left: 25),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  subTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
          ),
        ),
      ],
    );
  }
}
