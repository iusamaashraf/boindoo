import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TermsOfUser extends StatelessWidget {
  const TermsOfUser({super.key});

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
                const HeaderWidget(title: 'Terms of Use'),
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
                Text('Terms & Conditions',
                    style: lexendDecaStyle(
                        fontSize: Adaptive.px(20),
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: Adaptive.h(height(14)),
                ),
                Text(
                  'Welcome to Boindo',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w600,
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Text(
                  "By signing up for a Boindo account, you are entering into a legally binding agreement with Storytel. Before you enter the wonderful world of stories, please take a moment and read these Terms of Use carefully. These Terms of Use are important since they regulate the relationship between yourself and Boindo - and as such affect your legal rights and obligations.",
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(height(14)),
                ),
                Text(
                  'BOINDO TERMS OF USE ',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w600,
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Text(
                  "Boindo and its affiliates (hereinafter “Boindo”, “us”, “our” or “we”) offers a subscription service with personalized features and functionalities (the “Service”) that allows our users (hereinafter “you”) to access audiobooks and other content (the “Content”) made available over the Internet via the Service to a compatible internet-accessible device. In order to access our Services, you need an active Boindo account. When creating an account, you must agree to and accept these Terms of Use. Additionally, an active subscription is required to use the Service. Most subscriptions are regulated by additional subscription specific terms (“Subscription Terms”) which you accept when signing up for that subscription. Information on the subscription plans offered can be found on your local Boindo website. Apart from these Terms of Use, your agreement with Boindo is also regulated by: (i) the ",
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
