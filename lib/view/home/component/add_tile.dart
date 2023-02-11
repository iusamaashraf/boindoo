import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddTile extends StatelessWidget {
  const AddTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Adaptive.h(height(187)),
      width: Adaptive.w(width(336)),
      decoration: BoxDecoration(
          color: Color(0xff1E1E1E), borderRadius: BorderRadius.circular(28)),
      child: Padding(
        padding: EdgeInsets.only(
            left: Adaptive.w(width(16)), top: Adaptive.h(height(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get unlimited access to\nbooks in just',
              style: lexendStyle(
                  fontSize: Adaptive.px(20),
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '\$9.99 ',
                      style: lexendStyle(
                          fontSize: Adaptive.px(36),
                          fontWeight: FontWeight.w700,
                          color: mainYellow),
                    ),
                    SizedBox(
                      height: Adaptive.h(2),
                    ),
                    Text(
                      '*Terms & conditions apply',
                      style: lexendStyle(
                          fontSize: Adaptive.px(10),
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: Adaptive.h(0.8)),
                      child: Image.asset(image_1),
                    ),
                    SizedBox(
                      width: Adaptive.w(2),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(image_2),
                        SizedBox(
                          height: Adaptive.h(1),
                        ),
                        Image.asset(image_3),
                      ],
                    ),
                    SizedBox(
                      width: Adaptive.w(2),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(image_4),
                        SizedBox(
                          height: Adaptive.h(1),
                        ),
                        Image.asset(image_5),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
