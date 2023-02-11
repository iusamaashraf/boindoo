import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/home/home_page.dart';
import 'package:boindo/view/widget/checkout_input_field.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CheckOutCreditCardPage extends StatefulWidget {
  const CheckOutCreditCardPage({super.key});

  @override
  State<CheckOutCreditCardPage> createState() => _CheckOutCreditCardPageState();
}

class _CheckOutCreditCardPageState extends State<CheckOutCreditCardPage> {
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
                const HeaderWidget(title: 'Checkout'),
                SizedBox(
                  height: Adaptive.h(height(27)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TOTAL AMOUNT DUE',
                      style: lexendStyle(
                          fontSize: Adaptive.px(16),
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '\$99.99',
                      style: lexendStyle(
                          fontSize: Adaptive.px(16),
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(height(8)),
                ),
                Text(
                  'Card number',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w400,
                      color: textColor),
                ),
                SizedBox(
                  height: Adaptive.h(height(6)),
                ),
                const CheckOutInputField(
                  hintText: '0000 0000 0000 0000',
                  maxLength: 19,
                  isCardNumber: true,
                  suffexIconPath: mastercard,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: Adaptive.h(height(30)),
                ),
                Text(
                  'Cardholder’s name',
                  style: lexendStyle(
                      fontSize: Adaptive.px(16),
                      fontWeight: FontWeight.w400,
                      color: textColor),
                ),
                SizedBox(
                  height: Adaptive.h(height(6)),
                ),
                const CheckOutInputField(
                  hintText: 'Name',
                  maxLength: null,
                  isCardNumber: false,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: Adaptive.h(height(30)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expiration Date',
                          style: lexendStyle(
                              fontSize: Adaptive.px(16),
                              fontWeight: FontWeight.w400,
                              color: textColor),
                        ),
                        SizedBox(
                          height: Adaptive.h(height(8)),
                        ),
                        SizedBox(
                          width: Adaptive.w(40),
                          child: const CheckOutInputField(
                            hintText: 'MM/YYYY',
                            maxLength: 6,
                            isCardNumber: false,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVV',
                          style: lexendStyle(
                              fontSize: Adaptive.px(16),
                              fontWeight: FontWeight.w400,
                              color: textColor),
                        ),
                        SizedBox(
                          height: Adaptive.h(height(8)),
                        ),
                        SizedBox(
                          width: Adaptive.w(40),
                          child: const CheckOutInputField(
                            hintText: '3 digits',
                            maxLength: 3,
                            isCardNumber: false,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(height(30)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Adaptive.w(5)),
                  child: Text(
                    'A payment confirmation message will be sent to your email address',
                    textAlign: TextAlign.center,
                    style: lexendStyle(
                        fontSize: Adaptive.px(13),
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                SizedBox(
                  height: Adaptive.h(height(54)),
                  width: Adaptive.w(width(327)),
                  child: PrimaryButton(
                    onPressed: () {
                      Get.to(() => HomePage());
                    },
                    buttonText: '',
                    buttonColor: mainYellow,
                    buttonTextColor: Colors.black,
                    child: Text('COMPLETE PAYMENT',
                        style: lexendDecaStyle(
                          fontSize: Adaptive.px(16),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(31.34)),
                ),
                Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/icons/Norton_Icon.svg')),
                SizedBox(
                  height: Adaptive.h(height(23.28)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(lockIcon),
                      ),
                    ),
                    SizedBox(
                      width: Adaptive.w(width(14)),
                    ),
                    Expanded(
                      child: Text(
                        "We protect your payment information using encryption to provide bank-level security.",
                        maxLines: 2,
                        style: lexendStyle(
                            fontSize: Adaptive.px(11.67),
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
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
