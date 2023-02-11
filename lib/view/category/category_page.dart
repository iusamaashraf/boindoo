import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/model/songs_model.dart';
import 'package:boindo/view/item/item_page.dart';

import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _HomePageState();
}

class _HomePageState extends State<CategoryPage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(25))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(height(47)),
                ),
                const HeaderWidget(title: 'Category'),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                slideeTile(),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Text(
                  'COLLECTION 6',
                  style: lexendDecaStyle(
                      fontSize: Adaptive.px(16),
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Adaptive.h(height(26)),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: categoryList
                      .map((i) => GestureDetector(
                            onTap: () {
                              Get.to(() => const ItemPage());
                            },
                            child: SizedBox(
                              width: Adaptive.w(43),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: Adaptive.h(height(150)),
                                        width: Adaptive.w(width(160)),
                                        //  color: Colors.amber,
                                        child: Image.asset(
                                          i.imagePath!,
                                          fit: BoxFit.cover,
                                        )),
                                    SizedBox(
                                      height: Adaptive.h(height(8)),
                                    ),
                                    Text(
                                      i.title!,
                                      style: lexendStyle(
                                          fontSize: Adaptive.px(12),
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: Adaptive.h(height(2)),
                                    ),
                                    Text(
                                      i.auther!,
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
                                          i.time!,
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
                                          i.rating!,
                                          style: lexendStyle(
                                              fontSize: Adaptive.px(10),
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Adaptive.h(4),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox slideeTile() {
    return SizedBox(
      height: Adaptive.h(height(250)),
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {});
        },
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(16))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        color: Color(0xff414141), shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(backwardIcon),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        color: Color(0xff414141), shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(forwardIcon),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
