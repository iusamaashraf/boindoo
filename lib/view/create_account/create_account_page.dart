import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/login/login_page.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/input_filed.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController userName = TextEditingController();
  TextEditingController emailorPhone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repeatPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isChecked = false;

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
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: Adaptive.h(height(47)),
                  ),
                  const HeaderWidget(title: 'Register'),
                  SizedBox(
                    height: Adaptive.h(height(38.83)),
                  ),
                  creatAccountText(),
                  SizedBox(
                    height: Adaptive.h(height(40)),
                  ),
                  InputField(
                    controller: userName,
                    hintext: 'Username',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'User already exists, try again with a unique username';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: Adaptive.h(3.5),
                  ),
                  InputField(
                    controller: emailorPhone,
                    hintext: '*Email or Phone',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'This email already exists';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: Adaptive.h(3.5),
                  ),
                  InputField(
                    controller: password,
                    hintext: '*Password',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Your password should be at least 6 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: Adaptive.h(2.5),
                  ),
                  passwordInstructionText(),
                  SizedBox(
                    height: Adaptive.h(2.5),
                  ),
                  InputField(
                    controller: repeatPassword,
                    hintext: '*Repeat password',
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Password does not match';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: Adaptive.h(4),
                  ),
                  privacyPolicyWidget(),
                  SizedBox(
                    height: Adaptive.h(height(57)),
                  ),
                  continueButton()
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
      Get.to(() => const LoginPage());
    } else {}
  }

  Row privacyPolicyWidget() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            // alignment: Alignment.center,
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
          width: Adaptive.w(3),
        ),
        Text(
          'Agree to the ',
          style: lexendStyle(
              fontSize: Adaptive.px(12),
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
        SizedBox(
          width: Adaptive.w(5),
        ),
        Column(
          children: [
            Text('Terms, Privacy & Cookie Policy',
                style: GoogleFonts.lexend(
                    textStyle: TextStyle(
                        // decorationColor: mainYellow,
                        // decorationThickness: 2,
                        // decoration: TextDecoration.underline,
                        fontSize: Adaptive.px(12),
                        fontWeight: FontWeight.w400,
                        color: Colors.white))),
            Container(
              width: Adaptive.w(39),
              height: Adaptive.h(0.2),
              decoration: const BoxDecoration(color: mainYellow),
            )
          ],
        ),
      ],
    );
  }

  Row passwordInstructionText() {
    return Row(
      children: [
        Icon(
          Icons.warning,
          color: Colors.grey.shade700,
          size: Adaptive.h(2),
        ),
        SizedBox(
          width: Adaptive.w(2),
        ),
        Text(
          'Your password should be at least 6 characters',
          style: lexendStyle(
              fontSize: Adaptive.px(11),
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade700),
        )
      ],
    );
  }

  Column creatAccountText() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Create your account',
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
            'Please register to start your journey',
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
