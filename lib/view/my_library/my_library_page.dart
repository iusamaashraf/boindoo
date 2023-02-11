import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/model/play_mode.dart';
import 'package:boindo/view/my_library/component/play_tile.dart';
import 'package:boindo/view/my_profile/actor_profile_screen.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyLibraryPage extends StatefulWidget {
  MyLibraryPage({super.key});

  @override
  State<MyLibraryPage> createState() => _MyLibraryPageState();
}

class _MyLibraryPageState extends State<MyLibraryPage> {
  final List<String> artistName = [
    "Royryan Merc",
    "Neil Gaiman",
    "Mark mcallister",
    "Michael Doug...",
  ];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(0))),
          child: Column(
            children: [
              SizedBox(
                height: Adaptive.h(height(47)),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Adaptive.w(width(25))),
                child: const HeaderWidget(title: 'My Library'),
              ),
              SizedBox(
                height: Adaptive.h(height(40)),
              ),
              followDelteText(),
              SizedBox(
                height: Adaptive.h(height(32)),
              ),
              Row(
                children: [
                  SizedBox(
                    width: Adaptive.w(5),
                  ),
                  artistListView(),
                ],
              ),
              SizedBox(
                height: Adaptive.h(height(28)),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Adaptive.w(width(25))),
                child: Row(
                  children: [
                    selectionTile('PLAYS', 1),
                    selectionTile('SUMMARIES', 2),
                  ],
                ),
              ),
              listView()
            ],
          ),
        ),
      ),
    );
  }

  Padding followDelteText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Followed Artists by Sofia',
            style: lexendStyle(
                fontSize: Adaptive.px(14),
                fontWeight: FontWeight.w400,
                color: mainYellow),
          ),
          Text(
            'Delete',
            style: lexendStyle(
                fontSize: Adaptive.px(14),
                fontWeight: FontWeight.w400,
                color: Colors.white),
          )
        ],
      ),
    );
  }

  Expanded artistListView() {
    return Expanded(
      child: Container(
        alignment: Alignment.topCenter,
        //color: Colors.red,
        height: Adaptive.px(120),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: artistName.length,
            itemBuilder: (context, index) {
              return artistTIle(index);
            }),
      ),
    );
  }

  Column artistTIle(int index) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: Adaptive.h(height(76)),
          width: Adaptive.w(width(76)),
          decoration: const BoxDecoration(
              color: Color(0xffD9D9D9), shape: BoxShape.circle),
        ),
        SizedBox(
          height: Adaptive.h(height(8)),
        ),
        SizedBox(
          width: Adaptive.w(15),
          child: Text(
            artistName[index],
            textAlign: TextAlign.center,
            style: lexendStyle(
                fontSize: Adaptive.px(10),
                fontWeight: FontWeight.w900,
                color: Colors.white),
          ),
        ),
      ],
    );
  }

  Expanded listView() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(18))),
        child: ListView.builder(
            itemCount: playModelList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Get.to(() => const ActorProfileScreen());
                  },
                  child: PlayTile(playModel: playModelList[index]));
            }),
      ),
    );
  }

  Column selectionTile(String title, int index) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Text(
            title,
            style: lexendDecaStyle(
                fontSize: Adaptive.px(17),
                color: selectedIndex == index ? mainYellow : Color(0xff797979),
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: Adaptive.h(height(8)),
        ),
        Container(
          height: Adaptive.h(height(2)),
          width: Adaptive.w(width(160)),
          color: selectedIndex == index ? mainYellow : null,
        )
      ],
    );
  }
}
