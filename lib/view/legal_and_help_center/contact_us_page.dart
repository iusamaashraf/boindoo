import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
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
              children: [
                SizedBox(
                  height: Adaptive.h(height(47)),
                ),
                const HeaderWidget(title: 'Contact Us'),
                SizedBox(
                  height: Adaptive.h(height(39)),
                ),
                Text(
                  'Contact Us',
                  style: lexendDecaStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Adaptive.px(18),
                      color: mainYellow),
                ),
                SizedBox(
                  height: Adaptive.h(height(12)),
                ),
                const Divider(
                  thickness: 4,
                  color: mainYellow,
                ),
                SizedBox(
                  height: Adaptive.h(height(40)),
                ),
                containerTile(headSet, "Customer Service"),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                containerTile(whatsapp, "WhatsAp"),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                containerTile(website, "Website"),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                containerTile(facebook, "Fcebook"),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                containerTile(tweeter, "Twitter"),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                containerTile(insta, "Instagram"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container containerTile(String iconPath, String title) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Adaptive.w(5), vertical: Adaptive.h(3)),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          SvgPicture.asset(iconPath),
          SizedBox(
            width: Adaptive.h(height(12)),
          ),
          Text(
            title,
            style: lexendStyle(
                fontSize: Adaptive.px(14),
                fontWeight: FontWeight.w700,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
