import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/home/home_page.dart';
import 'package:boindo/view/my_library/my_library_page.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  bool isCheck = false;
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
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(height(47)),
                ),
                const HeaderWidget(title: 'My Profile'),
                SizedBox(
                  height: Adaptive.h(height(37)),
                ),
                const imageTile(),
                SizedBox(
                  height: Adaptive.h(height(26)),
                ),
                Text(
                  'Only your username and\n your profile photo will be visible to others.',
                  textAlign: TextAlign.center,
                  style: lexendStyle(
                      fontSize: Adaptive.px(12),
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(height(38)),
                ),
                userInfotile(),
                genderSelection(),
                SizedBox(
                  height: Adaptive.h(height(10)),
                ),
                SizedBox(
                  width: Adaptive.w(50),
                  child: const Divider(
                    thickness: 3,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(46)),
                ),
                buttons(),
                SizedBox(
                  height: Adaptive.h(height(81)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column userInfotile() {
    return Column(
      children: [
        userNameTile(),
        SizedBox(
          height: Adaptive.h(height(22)),
        ),
        userOtherInfoTile('Name', 'Hillary Gold'),
        SizedBox(
          height: Adaptive.h(height(22)),
        ),
        userOtherInfoTile('Birthday', 'April 26, 1990'),
        SizedBox(
          height: Adaptive.h(height(16)),
        ),
        const Divider(
          color: borderColor,
          thickness: 1.5,
        ),
        SizedBox(
          height: Adaptive.h(height(16)),
        ),
        userOtherInfoTile('Phone', '+90 (0) xxx xx xx'),
        SizedBox(
          height: Adaptive.h(height(22)),
        ),
        userOtherInfoTile('Email', 'henry@gmail.com'),
        SizedBox(
          height: Adaptive.h(height(16)),
        ),
        const Divider(
          color: borderColor,
          thickness: 1.5,
        ),
        SizedBox(
          height: Adaptive.h(height(16)),
        ),
        userOtherInfoTile('Member since', 'April 26, 1990'),
        SizedBox(
          height: Adaptive.h(height(22)),
        ),
        userOtherInfoTile('Premium expire date', 'April 26, 1990'),
        SizedBox(
          height: Adaptive.h(height(50)),
        ),
      ],
    );
  }

  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: Adaptive.h(height(54)),
          width: Adaptive.w(width(152.75)),
          child: PrimaryButton(
            onPressed: () {
              Get.to(() => HomePage());
            },
            buttonText: 'CANCEL',
            buttonColor: Color(0XFF1E1E1E),
            buttonTextColor: Colors.white,
            child: Text('Cancel',
                style: lexendDecaStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                )),
          ),
        ),
        SizedBox(
          height: Adaptive.h(height(54)),
          width: Adaptive.w(width(152.75)),
          child: PrimaryButton(
            onPressed: () {
              Get.to(() => MyLibraryPage());
            },
            buttonText: 'CANCEL',
            buttonColor: mainYellow,
            buttonTextColor: Colors.white,
            child: Text('Save',
                style: lexendDecaStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
          ),
        )
      ],
    );
  }

  Padding genderSelection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Adaptive.w(22)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Female',
            style: GoogleFonts.roboto(
                fontSize: Adaptive.px(16),
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          Switch(
              inactiveThumbColor: mainYellow,
              activeColor: mainYellow,
              value: isCheck,
              onChanged: (ca) {
                setState(() {
                  isCheck = ca;
                });
              }),
          Text(
            'Male',
            style: GoogleFonts.roboto(
                fontSize: Adaptive.px(16),
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        ],
      ),
    );
  }

  Row userNameTile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'User Name',
          style: lexendStyle(
              fontSize: Adaptive.px(13),
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
        Text(
          'AME1993',
          style: lexendStyle(
              fontSize: Adaptive.px(13),
              fontWeight: FontWeight.w400,
              color: Colors.white),
        )
      ],
    );
  }

  Row userOtherInfoTile(String title, String description) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: lexendStyle(
              fontSize: Adaptive.px(13),
              fontWeight: FontWeight.w400,
              color: const Color(0xffCECECE)),
        ),
        Text(
          description,
          style: lexendStyle(
              fontSize: Adaptive.px(13),
              fontWeight: FontWeight.w400,
              color: const Color(0xffA5A8AA)),
        )
      ],
    );
  }
}

class imageTile extends StatelessWidget {
  const imageTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Adaptive.h(height(211)),
      width: Adaptive.w(65),
      child: Stack(
        children: [
          Container(
            height: Adaptive.h(height(211)),
            width: Adaptive.w(Adaptive.w(width(201))),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: AssetImage(profilePic), fit: BoxFit.cover),
                color: Colors.white,
                border: Border.all(color: mainYellow, width: 4)),
          ),
          Positioned(
              bottom: Adaptive.h(3),
              right: Adaptive.w(8),
              child: SvgPicture.asset(cameraIcon))
        ],
      ),
    );
  }
}
