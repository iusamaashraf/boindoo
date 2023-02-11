import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/create_account/create_account_page.dart';
import 'package:boindo/view/login/login_page.dart';
import 'package:boindo/view/upgrade_and_payment_mrthode/upgrade/upgrade.dart';
import 'package:boindo/view/widget/circular_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingMember extends StatefulWidget {
  const OnboardingMember({super.key});

  @override
  State<OnboardingMember> createState() => _OnboardingNewUserState();
}

class _OnboardingNewUserState extends State<OnboardingMember> {
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
                  'Your Daily',
                  style: lexendDecaStyle(
                    fontSize: Adaptive.px(32),
                    fontWeight: FontWeight.w400,
                    //letterSpacing: Adaptive.px(-0.4),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(14)),
                ),
                Text('Recommendation',
                    style: lexendDecaStyle(
                        fontSize: Adaptive.px(32),
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
                SizedBox(
                  height: Adaptive.h(height(15)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        3,
                        (index) => Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff2B2C2E),
                                    Color(0xff2B2C2E),
                                  ],
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 8),
                                    blurRadius: 12,
                                    spreadRadius: 6,
                                  ),
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 4),
                                    blurRadius: 4,
                                    spreadRadius: 4,
                                  ),
                                ],
                                color: const Color(0xff1C1B1F),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: Adaptive.h(height(176)),
                                    width: Adaptive.w(width(176)),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(harry),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    height: Adaptive.h(2),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Bir Delinin Hatıra  Defteri ',
                                        style: lexendStyle(
                                            fontSize: Adaptive.px(16),
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'Yara Barros',
                                        style: lexendStyle(
                                            fontSize: Adaptive.px(16),
                                            color: Color(0xff6D7C8F),
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: Adaptive.h(1),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(starIcon),
                                      Text(
                                        'Yara Barros',
                                        style: lexendStyle(
                                            fontSize: Adaptive.px(12),
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              // Add your desired widget(s) here
                            )),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(140)),
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
                          Get.to(() => const CreateAccount());
                        },
                        buttonText: 'GUEST',
                        child: Text('SKIP',
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
                          Get.to(() => const UpgradePage());
                        },
                        buttonText: 'MORE',
                        child: Text('MORE',
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
