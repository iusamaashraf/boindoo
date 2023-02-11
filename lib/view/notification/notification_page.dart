import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: Adaptive.h(100),
      width: Adaptive.w(100),
      decoration: BoxDecoration(
        gradient: backgroundGradient(),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Adaptive.h(height(47)),
            ),
            const HeaderWidget(title: 'Notification'),
            SizedBox(
              height: Adaptive.h(height(28)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: lexendStyle(
                    fontSize: Adaptive.px(14),
                    color: mainYellow,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Delete ALL',
                  style: lexendStyle(
                    fontSize: Adaptive.px(12),
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            SizedBox(
              height: Adaptive.h(height(16)),
            ),
            const Divider(
              color: borderColor,
            ),
            SizedBox(
              height: Adaptive.h(height(16)),
            ),
            containerTile(),
            SizedBox(
              height: Adaptive.h(height(16)),
            ),
            containerTile(),
            SizedBox(
              height: Adaptive.h(height(24)),
            ),
            Text(
              'Yesterday',
              style: lexendStyle(
                fontSize: Adaptive.px(14),
                color: mainYellow,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Divider(
              color: borderColor,
            ),
            SizedBox(
              height: Adaptive.h(height(24)),
            ),
            containerTile()
          ],
        ),
      ),
    ));
  }

  Container containerTile() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Adaptive.w(5),
        vertical: Adaptive.h(2.5),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xff1E1E1E)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff323436)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    heart,
                    color: mainYellow,
                  ),
                ),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sofia, John and +19 others',
                    style: lexendStyle(
                        fontSize: Adaptive.px(14),
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    'liked your comment.',
                    style: lexendStyle(
                        fontSize: Adaptive.px(14),
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: Adaptive.h(0.8),
                  ),
                  Text(
                    '10m ago',
                    style: lexendStyle(
                        fontSize: Adaptive.px(13),
                        fontWeight: FontWeight.w500,
                        color: borderColor),
                  )
                ],
              ),
            ],
          ),
          SvgPicture.asset(trash)
        ],
      ),
    );
  }
}
