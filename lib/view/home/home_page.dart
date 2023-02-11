import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/model/songs_model.dart';
import 'package:boindo/view/category/category_page.dart';
import 'package:boindo/view/home/component/add_tile.dart';
import 'package:boindo/view/legal_and_help_center/help_center.dart';
import 'package:boindo/view/my_library/my_library_page.dart';
import 'package:boindo/view/my_profile/my_profile.dart';
import 'package:boindo/view/notification/notification_page.dart';
import 'package:boindo/view/seach_result/component/search_result_tile.dart';
import 'package:boindo/view/settings/settings_page.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int selectedIndex = 1;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int draweIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: Adaptive.h(100),
            width: Adaptive.w(55),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.35, 192.77],
                colors: [
                  Color(0xff1E1E1E),
                  Color(0xff1E1E1E),
                ],
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Adaptive.w(5)),
              child: Column(
                children: [
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: Adaptive.w(2),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: lexendStyle(
                                fontSize: Adaptive.px(15),
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            'johndoe@email.com',
                            style: lexendStyle(
                                fontSize: Adaptive.px(12),
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: Adaptive.h(height(47)),
                  ),
                  itemTile('Home', 1, () {
                    Get.off(const HomePage());
                  }, home),
                  SizedBox(
                    height: Adaptive.h(height(14)),
                  ),
                  itemTile('My Profile', 2, () {
                    Get.to(const MyProfilePage());
                  }, userFill),
                  SizedBox(
                    height: Adaptive.h(height(14)),
                  ),
                  itemTile('My Library', 3, () {
                    Get.to(MyLibraryPage());
                  }, bookMark),
                  SizedBox(
                    height: Adaptive.h(height(14)),
                  ),
                  itemTile('Notification', 4, () {
                    Get.to(NotificationPage());
                  }, notifi),
                  SizedBox(
                    height: Adaptive.h(height(14)),
                  ),
                  itemTile('Help Center', 5, () {
                    Get.to(HelpCenterPage());
                  }, helpCenter),
                  SizedBox(
                    height: Adaptive.h(height(14)),
                  ),
                  itemTile('Settings', 6, () {
                    Get.to(SettingPage());
                  }, setting),
                  SizedBox(
                    height: Adaptive.h(height(14)),
                  ),
                  itemTile('legal', 7, () {}, legal),
                  SizedBox(
                    height: Adaptive.h(height(14)),
                  ),
                  itemTile('Log out', 7, () {}, logout),
                  Spacer(),
                  Container(
                    height: Adaptive.h(height(32)),
                    width: Adaptive.w(width(150)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        containerTile(1, 'Light', light),
                        containerTile(2, 'Dark', moon)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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
                HeaderWidget(
                  title: 'Home',
                  onTap: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                slideeTile(),
                SizedBox(
                  height: Adaptive.h(height(34)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectionTile('ALL', 1),
                    selectionTile('PLAYS', 2),
                    selectionTile('SUMMARIES', 3),
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(height(26)),
                ),
                titleTile('TRENDING'),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        trendingList.length,
                        (index) => GestureDetector(
                            onTap: () {
                              Get.to(() => const CategoryPage());
                            },
                            child: SearchResultile(
                                songsModel: trendingList[index]))),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(35.5)),
                ),
                const AddTile(),
                SizedBox(
                  height: Adaptive.h(height(35.5)),
                ),
                titleTile('COLLECTION 1'),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        trendingList.length,
                        (index) =>
                            SearchResultile(songsModel: trendingList[index])),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(35.5)),
                ),
                titleTile('COLLECTION 2'),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        trendingList.length,
                        (index) =>
                            SearchResultile(songsModel: trendingList[index])),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int selectedCOntainer = 1;

  Widget containerTile(int index, String name, String iconPath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCOntainer = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        // height: Adaptive.h(height(100)),
        //  width: Adaptive.w(width(70)),
        padding: EdgeInsets.symmetric(horizontal: Adaptive.px(10)),
        decoration: BoxDecoration(
            color: selectedCOntainer == index ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              color: selectedCOntainer == index ? Colors.white : borderColor,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              name,
              style: lexendStyle(
                  fontSize: Adaptive.px(15),
                  color:
                      selectedCOntainer == index ? Colors.white : borderColor,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemTile(String name, int index, Function() onTap, String iconPath) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Adaptive.w(4), vertical: Adaptive.h(2)),
        decoration: BoxDecoration(
            color: draweIndex == index ? Color(0xff2C2D2E) : null,
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: Adaptive.px(15),
            ),
            SizedBox(
              width: Adaptive.w(5),
            ),
            Text(
              name,
              style: lexendStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
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

  Row titleTile(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: lexendDecaStyle(
              fontSize: Adaptive.px(16),
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        Row(
          children: [
            Text(
              'Show all',
              style: GoogleFonts.poppins(
                  fontSize: Adaptive.px(12),
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: Adaptive.w(2),
            ),
            Container(
              alignment: Alignment.center,
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                  color: mainYellow, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  forwardIcon,
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget selectionTile(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Text(
              title,
              style: lexendDecaStyle(
                  fontSize: Adaptive.px(12),
                  color: selectedIndex == index ? mainYellow : Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Adaptive.h(height(8)),
            ),
            Container(
              height: Adaptive.h(height(2)),
              width: Adaptive.w(width(96)),
              color: selectedIndex == index ? mainYellow : borderColor,
            )
          ],
        ),
      ),
    );
  }
}
