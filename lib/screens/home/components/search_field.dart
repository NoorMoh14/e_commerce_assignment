import 'package:flutter/material.dart';

import '../../../config/color.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 15,bottom: 10),
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {},
        keyboardType: TextInputType.text,
        maxLines: 1,
        decoration:const InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Product",
            hintStyle: TextStyle(
              fontSize: 15,

            ),
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 13,
            ),
        ),
      ),
    );
  }
}
