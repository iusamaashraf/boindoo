import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/view/home/home_page.dart';
import 'package:boindo/view/onboarding/onboarding_member.dart';
import 'package:boindo/view/widget/circular_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingNewUser extends StatefulWidget {
  const OnboardingNewUser({super.key});

  @override
  State<OnboardingNewUser> createState() => _OnboardingNewUserState();
}

class _OnboardingNewUserState extends State<OnboardingNewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: Padding(
          padding: EdgeInsets.only(
            right: Adaptive.w(5.5),
            left: Adaptive.w(5.5),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Adaptive.h(14),
                ),
                const CircularWidget(),
                Text(
                  'Welcome',
                  style: lexendDecaStyle(
                    fontSize: Adaptive.px(32),
                    fontWeight: FontWeight.w400,
                    letterSpacing: Adaptive.px(-0.4),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(2.5),
                ),
                Text('This is your first visit',
                    style: lexendDecaStyle(
                        fontSize: Adaptive.px(48),
                        fontWeight: FontWeight.w200,
                        color: Colors.white)),
                SizedBox(
                  height: Adaptive.h(2.5),
                ),
                Text(
                    'We are glad to see you here. You can use most of this platform for free for as long as you want. Subscription options are available for premium content. You can always contact us for any support request which are always valuable to us.',
                    style: lexendStyle(
                        lineHeight: Adaptive.px(2),
                        fontSize: Adaptive.px(14),
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                SizedBox(
                  height: Adaptive.h(height(192)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Adaptive.w(40),
                      height: Adaptive.h(6.7),
                      child: PrimaryButton(
                        buttonColor: blackCOlor,
                        buttonTextColor: Colors.white,
                        onPressed: () {
                          Get.to(() => const HomePage());
                        },
                        buttonText: 'GUEST',
                        child: Text('GUEST',
                            style: lexendDecaStyle(
                              fontSize: Adaptive.px(16),
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: Adaptive.w(40),
                      height: Adaptive.h(6.7),
                      child: PrimaryButton(
                        buttonColor: Colors.amber,
                        buttonTextColor: Colors.black,
                        onPressed: () {
                          Get.to(() => OnboardingMember());
                        },
                        buttonText: 'REGISTER',
                        child: Text('REGISTER',
                            style: lexendDecaStyle(
                              fontSize: Adaptive.px(16),
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
