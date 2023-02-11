import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/new_password/new_password_page.dart';
import 'package:boindo/view/widget/circular_widget.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(25))),
          child: Column(
            children: [
              SizedBox(
                height: Adaptive.h(height(47)),
              ),
              const HeaderWidget(title: 'Forgot Password'),
              SizedBox(
                height: Adaptive.h(1),
              ),
              const CircularWidget(),
              requestOtpText(),
              SizedBox(
                height: Adaptive.h(height(35)),
              ),
              selectOtpType(1, "(0) 5** ******99", "via SMS:"),
              SizedBox(
                height: Adaptive.h(height(24)),
              ),
              selectOtpType(2, "and***ley@yourdomain.com", "via Email:"),
              SizedBox(
                height: Adaptive.h(height(39)),
              ),
              continueButton()
            ],
          ),
        ),
      ),
    );
  }

  SizedBox continueButton() {
    return SizedBox(
      height: Adaptive.h(height(54)),
      width: Adaptive.w(width(327)),
      child: PrimaryButton(
        onPressed: () {
          Get.to(() => const NewPasswordPage());
        },
        buttonText: 'Continue',
        buttonColor: mainYellow,
        buttonTextColor: Colors.black,
        child: Text('CONTINUE',
            style: lexendDecaStyle(
              fontSize: Adaptive.px(16),
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )),
      ),
    );
  }

  Widget selectOtpType(int index, String emailOrphone, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(Adaptive.px(24)),
        // height: Adaptive.h(height(128)),
        // width: Adaptive.w(width(327)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Adaptive.px(10)),
            border: Border.all(
                width: 1.5,
                color: selectedIndex == index ? mainYellow : borderColor)),
        child: Row(
          children: [
            SvgPicture.asset(
              messageIcon,
              color: selectedIndex == index ? mainYellow : borderColor,
            ),
            SizedBox(
              width: Adaptive.w(4),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(height(8)),
                ),
                SizedBox(
                  width: Adaptive.w(44),
                  child: Text(
                    emailOrphone,
                    style: lexendStyle(
                        fontSize: Adaptive.px(16),
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Column requestOtpText() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Request OTP',
            style: lexendDecaStyle(
                fontSize: Adaptive.px(28),
                color: mainYellow,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: Adaptive.h(1),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Select your contact details to get your one time password',
            style: lexendDecaStyle(
                fontSize: Adaptive.px(16),
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
