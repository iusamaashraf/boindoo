import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/forgot_password/forgot_password.dart';
import 'package:boindo/view/login/component.dart';
import 'package:boindo/view/my_profile/my_profile.dart';
import 'package:boindo/view/upgrade_and_payment_mrthode/upgrade/upgrade.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/input_filed.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool isChecked = false;
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(25))),
              child: Column(
                children: [
                  SizedBox(
                    height: Adaptive.h(height(47)),
                  ),
                  const HeaderWidget(title: 'Login'),
                  SizedBox(
                    height: Adaptive.h(height(38.83)),
                  ),
                  loginText(),
                  SizedBox(
                    height: Adaptive.h(height(37)),
                  ),
                  const UserInfoTile(),
                  SizedBox(
                    height: Adaptive.h(4),
                  ),
                  InputField(
                    controller: passwordController,
                    hintext: 'Password',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Invalid password';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: Adaptive.h(height(25)),
                  ),
                  rememberMe(),
                  SizedBox(
                    height: Adaptive.h(height(26)),
                  ),
                  continueButton(),
                  SizedBox(
                    height: Adaptive.h(height(32)),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const ForgotPassword());
                      },
                      child: Text(
                        'Forgot Password',
                        style: lexendDecaStyle(
                            fontSize: Adaptive.px(16),
                            color: mainYellow,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
            ),
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
          validateAndSave();
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

  void validateAndSave() {
    final form = formKey.currentState;
    if (form!.validate()) {
      Get.to(() => const MyProfilePage());
    } else {
      print('form is invalid');
    }
  }

  Row rememberMe() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            height: Adaptive.h(height(20)),
            width: Adaptive.w(width(20)),
            decoration: BoxDecoration(
              color: isChecked ? mainYellow : null,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: mainYellow,
                width: 2,
              ),
            ),
            child: isChecked
                ? Icon(
                    Icons.done,
                    size: Adaptive.px(15),
                  )
                : const SizedBox(),
          ),
        ),
        SizedBox(
          width: Adaptive.w(width(12)),
        ),
        Text(
          'Remember me',
          style: lexendStyle(
              fontSize: Adaptive.px(12),
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
        SizedBox(
          width: Adaptive.w(5),
        ),
      ],
    );
  }

  Column loginText() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Login',
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
            'Please login to start your journey',
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
