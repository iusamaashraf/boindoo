import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // Initial Selected Value
  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'German',
    'French',
  ];
  bool isChecked = false;
  bool isAllownotification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(
          gradient: backgroundGradient(),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(15))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Adaptive.h(height(47)),
              ),
              const HeaderWidget(title: 'Settings'),
              SizedBox(
                height: Adaptive.h(height(28)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Adaptive.w(width(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile',
                        style: lexendStyle(
                          fontSize: Adaptive.px(14),
                          color: mainYellow,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(height(21)),
                      ),
                      iconTile(lockFill, 'Change Password'),
                      SizedBox(
                        height: Adaptive.h(height(30)),
                      ),
                      iconTile(userFill, 'Dark Mode'),
                      SizedBox(
                        height: Adaptive.h(height(30)),
                      ),
                      const Divider(
                        color: borderColor,
                      ),
                      SizedBox(
                        height: Adaptive.h(height(12)),
                      ),
                      Text(
                        'Preferences',
                        style: lexendStyle(
                          fontSize: Adaptive.px(14),
                          color: mainYellow,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(height(21)),
                      ),
                      changeLanguageTile(),
                      SizedBox(
                        height: Adaptive.h(height(31)),
                      ),
                      darkMoodTile(),
                      SizedBox(
                        height: Adaptive.h(height(31)),
                      ),
                      allownotificationTile(),
                      SizedBox(
                        height: Adaptive.h(height(31)),
                      ),
                      Divider(
                        color: borderColor,
                      ),
                      SizedBox(
                        height: Adaptive.h(height(12)),
                      ),
                      Text(
                        'Support',
                        style: lexendStyle(
                          fontSize: Adaptive.px(14),
                          color: mainYellow,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(height(20)),
                      ),
                      supportTile('Frequent Asked Questions - FAQ'),
                      SizedBox(
                        height: Adaptive.h(height(30)),
                      ),
                      supportTile('Help Center'),
                      SizedBox(
                        height: Adaptive.h(height(100)),
                      ),
                    ],
                  ),
                ),
              ),
              button()
            ],
          ),
        ),
      ),
    );
  }

  Row button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Adaptive.w(40),
          height: Adaptive.h(6.7),
          child: PrimaryButton(
            buttonColor: blackCOlor,
            buttonTextColor: Colors.white,
            onPressed: () {},
            buttonText: 'GUEST',
            child: Text('CANCEL',
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
            onPressed: () {},
            buttonText: 'REGISTER',
            child: Text('CONTINUE',
                style: lexendDecaStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
          ),
        ),
      ],
    );
  }

  Row supportTile(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: poppinsStyle(
              fontSize: Adaptive.px(16),
              fontWeight: FontWeight.w300,
              color: Colors.white),
        ),
        Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        )
      ],
    );
  }

  Row allownotificationTile() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              notification,
              height: Adaptive.px(20),
            ),
            SizedBox(
              width: Adaptive.w(width(11.3)),
            ),
            Text(
              'Allow Notification',
              style: poppinsStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isAllownotification = !isAllownotification;
            });
          },
          child: Container(
            height: Adaptive.h(height(20)),
            width: Adaptive.w(width(20)),
            decoration: BoxDecoration(
              color: isAllownotification ? mainYellow : null,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: mainYellow,
                width: 2,
              ),
            ),
            child: isAllownotification
                ? Icon(
                    Icons.done,
                    size: Adaptive.px(15),
                  )
                : const SizedBox(),
          ),
        ),
      ],
    );
  }

  Row darkMoodTile() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              moon,
              height: Adaptive.px(20),
            ),
            SizedBox(
              width: Adaptive.w(width(11.3)),
            ),
            Text(
              'Dark Mode',
              style: poppinsStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ],
        ),
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
      ],
    );
  }

  Row changeLanguageTile() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              userFill,
              height: Adaptive.px(20),
            ),
            SizedBox(
              width: Adaptive.w(width(11.3)),
            ),
            Text(
              'Change Language',
              style: poppinsStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            )
          ],
        ),
        DropdownButton(
          value: dropdownvalue,
          dropdownColor: Colors.black,

          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: Adaptive.px(20),
          ),
          style: poppinsStyle(
              fontSize: Adaptive.px(12),
              fontWeight: FontWeight.w400,
              color: Colors.white),

          underline: SizedBox(),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items,
                  style: poppinsStyle(
                      fontSize: Adaptive.px(12),
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ],
    );
  }

  Row iconTile(String iconPath, String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: Adaptive.px(20),
            ),
            SizedBox(
              width: Adaptive.w(width(11.3)),
            ),
            Text(
              title,
              style: poppinsStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            )
          ],
        ),
        Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        )
      ],
    );
  }
}
