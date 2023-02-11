import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(userPic),
            ),
            SizedBox(
              width: Adaptive.w(width(16)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Johne Doe',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  'john.doe@example.com',
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                )
              ],
            ),
          ],
        ),
        SvgPicture.asset(allDone)
      ],
    );
  }
}
