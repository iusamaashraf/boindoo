import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CookiePolicyPage extends StatelessWidget {
  const CookiePolicyPage({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Adaptive.h(height(47)),
                ),
                const HeaderWidget(title: 'Cookie Policy'),
                SizedBox(
                  height: Adaptive.h(height(33)),
                ),
                Text(
                  'Privacy Policy',
                  style: lexendStyle(
                      letterSpacing: 0.2,
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w800,
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(1),
                ),
                Text(
                  'Terms of Use',
                  style: lexendStyle(
                      letterSpacing: 0.2,
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(1),
                ),
                Text(
                  'Cookie Policy',
                  style: lexendStyle(
                      letterSpacing: 0.2,
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(1),
                ),
                Text(
                  'FAQ',
                  style: lexendStyle(
                      letterSpacing: 0.2,
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(4.5),
                ),
                Text('Cookie Policy',
                    style: lexendDecaStyle(
                        fontSize: Adaptive.px(20),
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: Adaptive.h(height(14)),
                ),
                Text(
                  'Question 1',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w600,
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(height(14)),
                ),
                Text(
                  'Question 2',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w600,
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Text(
                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(height(14)),
                ),
                Text(
                  'Question 3',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w600,
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Text(
                  "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ",
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(height(14)),
                ),
                Text(
                  'Question 4',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w600,
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Text(
                  "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ",
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
