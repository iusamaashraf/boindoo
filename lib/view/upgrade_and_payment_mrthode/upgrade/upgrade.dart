import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/home/home_page.dart';
import 'package:boindo/view/upgrade_and_payment_mrthode/payment_method/payment_method.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UpgradePage extends StatefulWidget {
  const UpgradePage({super.key});

  @override
  State<UpgradePage> createState() => _UpgradePageState();
}

class _UpgradePageState extends State<UpgradePage> {
  int selectedIndex = 2;
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
                const HeaderWidget(title: 'Upgrade'),
                SizedBox(
                  height: Adaptive.h(height(27)),
                ),
                Text(
                  'Unlock Premium',
                  style: lexendDecaStyle(
                      fontSize: Adaptive.px(28),
                      color: mainYellow,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Adaptive.h(height(12)),
                ),
                Text(
                  'Enjoy listening full cast, cinematic plays and summaries, without restrictions and without ads',
                  style: lexendStyle(
                      fontSize: Adaptive.px(14),
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Adaptive.h(height(15)),
                ),
                Text(
                  'Premium Plans',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Adaptive.h(height(20)),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(36)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      premiumPlanTile(1, 'Monthly', 'USD 5.00'),
                      premiumPlanTile(2, 'Yearly', 'USD 3.75')
                    ],
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(41)),
                ),
                descriptionTile('Ad-free listening'),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                descriptionTile('Access to premium content'),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                descriptionTile('Invite up to 3 Family members'),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                descriptionTile('Stream in high-def'),
                SizedBox(
                  height: Adaptive.h(height(60)),
                ),
                SizedBox(
                  height: Adaptive.h(height(54)),
                  width: Adaptive.w(width(327)),
                  child: PrimaryButton(
                    onPressed: () {
                      Get.to(() => const PaymentMethodPage());
                    },
                    buttonText: '',
                    buttonColor: mainYellow,
                    buttonTextColor: Colors.black,
                    child: Text('CONTINUE',
                        style: lexendDecaStyle(
                          fontSize: Adaptive.px(16),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(19)),
                ),
                Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => const HomePage());
                      },
                      child: Text('NO THANKS',
                          style: lexendDecaStyle(
                            fontSize: Adaptive.px(16),
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          )),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row descriptionTile(String title) {
    return Row(
      children: [
        SvgPicture.asset(done),
        SizedBox(
          width: Adaptive.w(width(12.5)),
        ),
        Text(
          title,
          style: lexendStyle(
              fontSize: Adaptive.px(20),
              fontWeight: FontWeight.w400,
              color: Colors.white),
        )
      ],
    );
  }

  Widget premiumPlanTile(int index, String title, String description) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Adaptive.w(8),
          vertical: Adaptive.h(3),
        ),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: selectedIndex == index ? mainYellow : Colors.white,
            ),
            color: selectedIndex == index ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(36)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: lexendStyle(
                  fontSize: Adaptive.px(14),
                  color: selectedIndex == index ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: Adaptive.h(height(8)),
            ),
            Text(
              description,
              style: lexendStyle(
                  fontSize: Adaptive.px(18),
                  color: selectedIndex == index ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: Adaptive.h(height(20)),
            ),
            Text(
              'Billed & recurring\n monthly \nCancel anytime',
              textAlign: TextAlign.center,
              style: lexendStyle(
                  fontSize: Adaptive.px(14),
                  color: selectedIndex == index ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
