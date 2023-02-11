import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(23))),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(height(47)),
                ),
                const HeaderWidget(title: ''),
                SizedBox(
                  height: Adaptive.h(height(28)),
                ),
                Container(
                  height: Adaptive.h(height(300)),
                  width: Adaptive.w(width(300)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(hand), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                Text(
                  'Chapter 1 : Part 2',
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w600,
                      color: borderColor),
                ),
                SizedBox(
                  height: Adaptive.h(height(10)),
                ),
                Text(
                  'Bir Kadın için Düet',
                  style: lexendDecaStyle(
                      fontSize: Adaptive.px(24),
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Adaptive.h(height(12)),
                ),
                Text(
                  'Aziz Nesin',
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(height(10)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      heart,
                      color: Colors.white,
                    ),
                    SvgPicture.asset(
                      share,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(height(13)),
                ),
                ProgressBar(
                  timeLabelPadding: 5,
                  progressBarColor: mainYellow,
                  thumbColor: Colors.white,
                  thumbRadius: 5,
                  baseBarColor: borderColor,
                  timeLabelTextStyle: lexendStyle(
                      fontSize: Adaptive.px(12),
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                  progress: const Duration(milliseconds: 1000),
                  buffered: const Duration(milliseconds: 2000),
                  total: const Duration(milliseconds: 5000),
                  onSeek: (duration) {},
                ),
                SizedBox(
                  height: Adaptive.h(height(20)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(previous),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(foreardReverse),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: Adaptive.h(height(66.67)),
                      width: Adaptive.w(width(66.67)),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: mainYellow),
                      child: SvgPicture.asset(
                        playIcon,
                        color: Colors.black,
                        height: Adaptive.px(30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(backReverse),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(next),
                    ),
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(height(40)),
                ),
                Row(
                  children: [
                    Text(
                      'Part',
                      style: lexendStyle(
                          fontSize: Adaptive.px(16),
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: Adaptive.w(2),
                    ),
                    //  Icon(Icons.keyboard_arrow_down_rounded),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isShow = !isShow;
                        });
                      },
                      child: Icon(
                        isShow
                            ? Icons.keyboard_arrow_up_sharp
                            : Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                isShow
                    ? ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Adaptive.h(height(20))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${index + 1}",
                                      style:
                                          const TextStyle(color: borderColor),
                                    ),
                                    SizedBox(
                                      width: Adaptive.w(3),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Uprising',
                                          style: lexendStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: Adaptive.px(17),
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: Adaptive.h(1),
                                        ),
                                        Text(
                                          'MUSE',
                                          style: lexendStyle(
                                              fontSize: Adaptive.px(17),
                                              fontWeight: FontWeight.w400,
                                              color: borderColor),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '5:03',
                                      style: lexendStyle(
                                          fontSize: Adaptive.px(15),
                                          fontWeight: FontWeight.w400,
                                          color: borderColor),
                                    ),
                                    SizedBox(
                                      width: Adaptive.w(4),
                                    ),
                                    Container(
                                      height: Adaptive.h(
                                        height(24),
                                      ),
                                      width: Adaptive.w(width(24)),
                                      decoration: const BoxDecoration(
                                          color: borderColor,
                                          shape: BoxShape.circle),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(playIcon),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        })
                    : SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
