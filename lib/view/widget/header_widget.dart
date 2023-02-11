import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.title, this.onTap});
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.white,
              size: Adaptive.px(25),
            )),
        Text(
          title,
          style: lexendDecaStyle(
              fontSize: Adaptive.px(18),
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
              size: Adaptive.px(25),
            )),
      ],
    );
    ;
  }
}
