import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/home/home_page.dart';
import 'package:boindo/view/upgrade_and_payment_mrthode/check_out_credit_card/checkout_credit_card_page.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int selectedCOntainer = 2;

  int? groupValue;

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
              const HeaderWidget(title: 'Payment Method'),
              SizedBox(
                height: Adaptive.h(height(27)),
              ),
              Text(
                'Payment Method',
                style: lexendDecaStyle(
                    fontSize: Adaptive.px(28),
                    color: mainYellow,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Adaptive.h(height(12)),
              ),
              Text(
                "Order Summary",
                style: lexendStyle(
                    fontSize: Adaptive.px(14),
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Adaptive.h(height(16)),
              ),
              Divider(
                color: borderColor,
              ),
              SizedBox(
                height: Adaptive.h(height(16)),
              ),
              detailTile("1 year subscription", '\$89.99'),
              SizedBox(
                height: Adaptive.h(height(16)),
              ),
              detailTile("VAT (10%)", '\$10.00'),
              SizedBox(
                height: Adaptive.h(height(26)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SUBTOTAL',
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
                height: Adaptive.h(height(27)),
              ),
              Container(
                height: Adaptive.h(height(54)),
                width: Adaptive.w(width(328)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    containerTile(1, 'Promo Code'),
                    containerTile(2, 'APPLY')
                  ],
                ),
              ),
              SizedBox(
                height: Adaptive.h(height(27)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Your Discount',
                    style: lexendStyle(
                        fontSize: Adaptive.px(16),
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '-\$0.00',
                    style: lexendStyle(
                        fontSize: Adaptive.px(16),
                        color: Color(0xff3C8A3C),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: Adaptive.h(height(42)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total payment',
                    style: lexendStyle(
                        fontSize: Adaptive.px(16),
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '-\$99.9',
                    style: lexendStyle(
                        fontSize: Adaptive.px(16),
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: Adaptive.h(height(42)),
              ),
              Text(
                'Select your payment method',
                style: lexendStyle(
                    fontSize: Adaptive.px(16),
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: Adaptive.h(height(10)),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: Column(
                  children: [
                    selectPaymentMethod(1, mastercard, 'Credit card'),
                    SizedBox(
                      height: Adaptive.h(2),
                    ),
                    selectPaymentMethod(2, google, 'Google Pay'),
                    SizedBox(
                      height: Adaptive.h(2),
                    ),
                    selectPaymentMethod(3, apple, 'Appple Pay'),
                    SizedBox(
                      height: Adaptive.h(2),
                    ),
                    selectPaymentMethod(4, bank, 'Internet Banking'),
                    SizedBox(
                      height: Adaptive.h(2),
                    ),
                    selectPaymentMethod(5, crypto, 'Cryptocurrency'),
                  ],
                ),
              ),
              SizedBox(
                height: Adaptive.h(2),
              ),
              SizedBox(
                height: Adaptive.h(height(54)),
                width: Adaptive.w(width(327)),
                child: PrimaryButton(
                  onPressed: () {
                    Get.to(() => const CheckOutCreditCardPage());
                  },
                  buttonText: '',
                  buttonColor: mainYellow,
                  buttonTextColor: Colors.black,
                  child: Text('PAY USD 9,99',
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
                ),
              ),
              SizedBox(
                height: Adaptive.h(8),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Container selectPaymentMethod(int val, String imagePath, String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              val == 5
                  ? Image.asset(
                      imagePath,
                      height: Adaptive.px(20),
                    )
                  : SvgPicture.asset(
                      imagePath,
                      height: Adaptive.px(20),
                    ),
              SizedBox(
                width: Adaptive.w(2),
              ),
              Text(
                title,
                style: lexendStyle(
                    fontSize: Adaptive.px(16),
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Radio(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Colors.white),
              value: val,
              groupValue: groupValue,
              onChanged: (val) {
                setState(() {
                  groupValue = val!;
                });
              })
        ],
      ),
    );
  }

  Widget containerTile(int index, String name) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCOntainer = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: Adaptive.h(height(54)),
        width: Adaptive.w(width(150)),
        decoration: BoxDecoration(
            color: selectedCOntainer == index ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          name,
          style: lexendStyle(
              fontSize: Adaptive.px(16),
              color: selectedCOntainer == index ? Colors.white : borderColor,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  Row detailTile(String title, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: lexendStyle(
              fontSize: Adaptive.px(14),
              color: textColor,
              fontWeight: FontWeight.w400),
        ),
        Text(
          price,
          style: lexendStyle(
              fontSize: Adaptive.px(14),
              color: textColor,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
