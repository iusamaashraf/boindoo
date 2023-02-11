import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  List<String> itemList = [
    'General',
    'Account',
    'Service',
    'General',
  ];
  int selectedIndex = 0;

  bool q1 = false;
  bool q2 = false;
  bool q3 = false;
  bool q4 = false;

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
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(height(47)),
                ),
                const HeaderWidget(title: 'Help Center'),
                SizedBox(
                  height: Adaptive.h(height(39)),
                ),
                Text(
                  'FAQ',
                  style: lexendDecaStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Adaptive.px(18),
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(height(12)),
                ),
                const Divider(
                  thickness: 4,
                  color: mainYellow,
                ),
                SizedBox(
                  height: Adaptive.h(height(25)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(itemList.length,
                        (index) => itemTile(index, itemList[index])),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(25)),
                ),
                inputFiled(),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                queationTIle(q1, () {
                  setState(() {
                    q1 = !q1;
                  });
                }, 'What is Boindo?'),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                queationTIle(q2, () {
                  setState(() {
                    q2 = !q2;
                  });
                }, 'Here comes next question?'),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                queationTIle(q3, () {
                  setState(() {
                    q3 = !q3;
                  });
                }, 'Here comes next question?'),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                queationTIle(q4, () {
                  setState(() {
                    q4 = !q4;
                  });
                }, 'Here comes next question?'),
                SizedBox(
                  height: Adaptive.h(height(39)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget queationTIle(bool isOpen, Function()? onTap, String question) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Adaptive.w(5), vertical: Adaptive.h(3)),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  question,
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SvgPicture.asset(downwardIcon)
              ],
            ),
            isOpen
                ? Column(
                    children: [
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      const Divider(
                        color: borderColor,
                      ),
                      SizedBox(
                        height: Adaptive.h(2),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: lexendStyle(
                            fontSize: Adaptive.px(14),
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }

  TextField inputFiled() {
    return TextField(
      style: lexendStyle(
          fontSize: Adaptive.px(16),
          fontWeight: FontWeight.w400,
          color: textColor),
      cursorColor: mainYellow,
      decoration: InputDecoration(
        counterText: '',
        suffixIcon: Padding(
          padding: const EdgeInsets.all(20),
          child: SvgPicture.asset(filter),
        ),
        fillColor: Colors.black,
        border: InputBorder.none,
        hintText: 'Search',
        prefixIcon: Padding(
          padding: const EdgeInsets.all(20),
          child: SvgPicture.asset(searchIcon),
        ),
        hintStyle: lexendStyle(
            fontSize: Adaptive.px(16),
            fontWeight: FontWeight.w400,
            color: textColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          //  borderSide: const BorderSide(width: 1, color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          // borderSide: const BorderSide(width: 1, color: borderColor),
        ),
      ),
    );
  }

  Widget itemTile(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
        decoration: BoxDecoration(
            border: Border.all(color: mainYellow, width: 1.8),
            color: selectedIndex == index ? mainYellow : null,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: lexendStyle(
              fontSize: Adaptive.px(16),
              fontWeight: FontWeight.w600,
              color: selectedIndex == index ? Colors.black : mainYellow),
        ),
      ),
    );
  }
}
