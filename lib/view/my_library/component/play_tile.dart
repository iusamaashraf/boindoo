import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/model/play_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayTile extends StatelessWidget {
  const PlayTile({super.key, required this.playModel});
  final PlayModel playModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Adaptive.px(12)),
          color: const Color(0xff1E1E1E)),
      margin: EdgeInsets.symmetric(vertical: Adaptive.px(8)),
      padding: EdgeInsets.only(
        left: Adaptive.px(12),
        top: Adaptive.px(12),
        bottom: Adaptive.px(12),
        right: Adaptive.px(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: Adaptive.px(80),
                    width: Adaptive.px(80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Adaptive.px(10)),
                        image: DecorationImage(
                            image: AssetImage(playModel.imagePath!))),
                  ),
                  SizedBox(
                    width: Adaptive.w(width(21)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Adaptive.w(40),
                        child: Text(
                          playModel.title!,
                          style: lexendStyle(
                              fontSize: Adaptive.px(16),
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(height(4)),
                      ),
                      Text(
                        playModel.subTitle!,
                        style: lexendStyle(
                            fontSize: Adaptive.px(12),
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              SvgPicture.asset(crossIcon)
            ],
          ),
          SizedBox(
            height: Adaptive.h(height(10)),
          ),
          LinearProgressIndicator(
            value: playModel.percentage!,
            backgroundColor: Colors.black,
            color: mainYellow,
          )
        ],
      ),
    );
    ;
  }
}
