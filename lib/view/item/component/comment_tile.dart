import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CommentTIle extends StatelessWidget {
  const CommentTIle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(
                horizontal: Adaptive.w(5), vertical: Adaptive.h(1)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(beauty),
                        ),
                        SizedBox(
                          width: Adaptive.w(2),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alex Tsimikas',
                              style: lexendStyle(
                                  fontSize: Adaptive.px(14),
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              '3d ago',
                              style: lexendStyle(
                                  fontSize: Adaptive.px(12),
                                  fontWeight: FontWeight.w500,
                                  color: borderColor),
                            ),
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(like)
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Text(
                  'Going on vacation! Catch you all in 10 days.  Going on vacation!',
                  style: lexendStyle(
                      fontSize: Adaptive.px(13),
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Divider(
                  color: borderColor,
                )
              ],
            ),
          );
        });
  }
}
