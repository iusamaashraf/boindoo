import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/item/component/comment_tile.dart';
import 'package:boindo/view/play/play_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageTIle(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Adaptive.w(width(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harry Potter and the Sorcer...',
                      style: lexendDecaStyle(
                          fontSize: Adaptive.px(20),
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'J.K.Rowling',
                      style: lexendDecaStyle(
                          fontSize: Adaptive.px(16),
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    iconsTIle(),
                    SizedBox(
                      height: Adaptive.h(2),
                    ),
                    Row(
                      children: [
                        tagsTile('Fantasy'),
                        SizedBox(
                          width: Adaptive.w(2),
                        ),
                        tagsTile('Drama'),
                        SizedBox(
                          width: Adaptive.w(2),
                        ),
                        tagsTile('Fiction')
                      ],
                    ),
                    SizedBox(
                      height: Adaptive.h(height(30)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectionTile('SUMMARIES', 1),
                        selectionTile('CAST', 2),
                      ],
                    ),
                    SizedBox(
                      height: Adaptive.h(height(16)),
                    ),
                    Text(
                      'THE HEADER',
                      style: lexendStyle(
                          fontSize: Adaptive.px(20),
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: Adaptive.h(height(8)),
                    ),
                    Text(
                      'Amet minim mollit non deserunt ullam est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitaion veniam consequat sunt nostrud amet. Mollit non deserunt umc est sit aliqua dolor do amet sint. Read more..  ',
                      style: lexendStyle(
                          fontSize: Adaptive.px(12),
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: Adaptive.h(height(44)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'REVIEWS',
                          style: lexendStyle(
                              fontSize: Adaptive.px(16),
                              fontWeight: FontWeight.w500,
                              color: mainYellow),
                        ),
                        Text(
                          'RATING',
                          style: lexendStyle(
                              fontSize: Adaptive.px(12),
                              fontWeight: FontWeight.w500,
                              color: mainYellow),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Adaptive.h(height(9)),
                    ),
                    const Divider(
                      color: borderColor,
                      thickness: 2,
                    )
                  ],
                ),
              ),
              const CommentTIle()
            ],
          ),
        ),
      ),
    );
  }

  Padding iconsTIle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                starIcon,
                height: Adaptive.px(20),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),
              Text(
                '4.9',
                style: lexendStyle(
                    fontSize: Adaptive.px(12),
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                message,
                height: Adaptive.px(20),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),
              Text(
                '45',
                style: lexendStyle(
                    fontSize: Adaptive.px(12),
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          SvgPicture.asset(
            heart,
            height: Adaptive.px(20),
          ),
          SvgPicture.asset(
            bookMark,
            height: Adaptive.px(20),
          ),
          SvgPicture.asset(
            share,
            height: Adaptive.px(20),
          ),
        ],
      ),
    );
  }

  SizedBox imageTIle() {
    return SizedBox(
      height: Adaptive.h(height(335)),
      width: Adaptive.w(width(379)),
      child: Stack(
        children: [
          Container(
            height: Adaptive.h(height(316)),
            width: Adaptive.w(width(379)),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/gangi_png.png'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 0,
            right: Adaptive.w(6),
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: mainYellow, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => PlayPage());
                    },
                    child: SvgPicture.asset(playIcon)),
              ),
            ),
          )
        ],
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
                fontSize: Adaptive.px(16),
                color: selectedIndex == index
                    ? mainYellow
                    : const Color(0xff797979),
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: Adaptive.h(height(8)),
        ),
        Container(
          height: Adaptive.h(height(1)),
          width: Adaptive.w(width(150)),
          color: selectedIndex == index ? mainYellow : const Color(0xff797979),
        )
      ],
    );
  }

  Container tagsTile(String tagName) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white)),
      child: Text(
        tagName,
        style: lexendStyle(
            fontSize: Adaptive.px(12),
            fontWeight: FontWeight.w600,
            color: Colors.white),
      ),
    );
  }
}
