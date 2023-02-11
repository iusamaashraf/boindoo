import 'package:boindo/view/cast/cast_page.dart';
import 'package:boindo/view/category/category_page.dart';
import 'package:boindo/view/create_account/create_account_page.dart';
import 'package:boindo/view/forgot_password/forgot_password.dart';
import 'package:boindo/view/home/home_page.dart';
import 'package:boindo/view/item/item_page.dart';
import 'package:boindo/view/legal_and_help_center/contact_us_page.dart';
import 'package:boindo/view/legal_and_help_center/cookie_policy_page.dart';
import 'package:boindo/view/legal_and_help_center/help_center.dart';
import 'package:boindo/view/legal_and_help_center/privacy_policy.dart';
import 'package:boindo/view/legal_and_help_center/terms_of_use.dart';
import 'package:boindo/view/login/login_page.dart';
import 'package:boindo/view/my_profile/actor_profile_screen.dart';
import 'package:boindo/view/my_profile/my_profile.dart';
import 'package:boindo/view/new_password/new_password_page.dart';
import 'package:boindo/view/my_library/my_library_page.dart';
import 'package:boindo/view/notification/notification_page.dart';
import 'package:boindo/view/onboarding/onboarding_member.dart';
import 'package:boindo/view/onboarding/onboarding_new_user.dart';
import 'package:boindo/view/play/play_page.dart';
import 'package:boindo/view/seach_result/search_result_page.dart';
import 'package:boindo/view/search/search_page.dart';
import 'package:boindo/view/settings/settings_page.dart';
import 'package:boindo/view/splash/splash_page.dart';
import 'package:boindo/view/upgrade_and_payment_mrthode/check_out_credit_card/checkout_credit_card_page.dart';
import 'package:boindo/view/upgrade_and_payment_mrthode/check_out_credit_card/pay_in_crypto_page.dart';
import 'package:boindo/view/upgrade_and_payment_mrthode/payment_method/payment_method.dart';
import 'package:boindo/view/upgrade_and_payment_mrthode/upgrade/upgrade.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     //enabled: !kReleaseMode,
  //     builder: (context) => const MyApp(), // Wrap your app
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // useInheritedMediaQuery: true,
          // locale: DevicePreview.locale(context),
          // builder: DevicePreview.appBuilder,
          title: 'Boindo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
            ),
          ),
          home: const SplashPage()

          //MyLibraryPage(),
          );
    });
  }
}
