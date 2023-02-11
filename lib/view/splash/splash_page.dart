import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/onboarding/onboarding_new_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAll(() => const OnboardingNewUser());
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          height: Adaptive.h(100),
          width: Adaptive.w(100),
          decoration: BoxDecoration(gradient: backgroundGradient()),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: Adaptive.h(5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  circularWidget(),
                  SvgPicture.asset(logoText)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget circularWidget() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: Adaptive.h(20),
          width: Adaptive.w(40),
          // color: Colors.white,
          child: Container(
            alignment: Alignment.center,
            height: Adaptive.h(18),
            width: Adaptive.w(28),
            decoration:
                const BoxDecoration(color: mainYellow, shape: BoxShape.circle),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: Adaptive.h(8),
                    width: Adaptive.w(20),
                    decoration: centerBoxdecoration())
              ],
            ),
          ),
        ),
        Positioned(
          bottom: Adaptive.h(3),
          right: Adaptive.w(1),
          child: Container(
            height: Adaptive.h(3),
            width: Adaptive.w(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff545454),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(86, 90, 99, 0.8),
                  offset: Offset(-3, -3),
                  blurRadius: 6,
                ),
                BoxShadow(
                  color: Color.fromRGBO(16, 16, 16, 0.75),
                  offset: Offset(3, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  BoxDecoration centerBoxdecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.1642, 0.845],
        colors: [
          Color(0xff333333),
          Color(0xff3B3C3F),
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          offset: const Offset(0, 4),
          blurRadius: 4,
        ),
      ],
    );
  }
}
