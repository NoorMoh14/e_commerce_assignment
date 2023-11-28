import 'package:e_commerce_assignment/screens/home/components/ads_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import 'components/Login_icon.dart';
import 'components/products_section.dart';
import 'components/search_field.dart';
import 'components/shopping_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: Get.height * .095,
          leadingWidth: Get.width * .68,
          leading: const SearchField(),
          actions: const [
            ShoppingIcon(),
            LoginIcon(),
          ],
        ),
        body: Column(
          children: [
            const AdsSlider(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See More',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ))
                ],
              ),
            ),
            const ProductsSection(),
          ],
        ),
      ),
    );
  }
}
