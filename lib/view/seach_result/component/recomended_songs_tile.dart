import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/model/songs_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RecomendedSongsTile extends StatelessWidget {
  const RecomendedSongsTile({super.key, required this.songsModel});
  final SongsModel songsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(cryngMan),
        SizedBox(
          height: Adaptive.h(height(8)),
        ),
        Text(
          songsModel.title!,
          style: lexendStyle(
              fontSize: Adaptive.px(12),
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
        SizedBox(
          height: Adaptive.h(height(2)),
        ),
        Text(
          songsModel.auther!,
          style: lexendStyle(
              fontSize: Adaptive.px(10),
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: Adaptive.h(height(5)),
        ),
        Row(
          children: [
            SvgPicture.asset(
              headPhone,
              color: Colors.white,
            ),
            SizedBox(
              width: Adaptive.w(width(5)),
            ),
            Text(
              songsModel.time!,
              style: lexendStyle(
                  fontSize: Adaptive.px(10),
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: Adaptive.w(width(8)),
            ),
            SvgPicture.asset(
              starIcon,
              color: mainYellow,
            ),
            SizedBox(
              width: Adaptive.w(width(5)),
            ),
            Text(
              songsModel.rating!,
              style: lexendStyle(
                  fontSize: Adaptive.px(10),
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
          ],
        )
      ],
    );
  }
}
