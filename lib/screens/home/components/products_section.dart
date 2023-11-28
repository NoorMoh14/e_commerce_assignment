import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../config/color.dart';
import '../../../components/product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});



  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
