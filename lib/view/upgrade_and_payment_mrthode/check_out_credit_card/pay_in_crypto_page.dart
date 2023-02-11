import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PayInCryptoPage extends StatefulWidget {
  const PayInCryptoPage({super.key});

  @override
  State<PayInCryptoPage> createState() => _PayInCryptoPageState();
}

class _PayInCryptoPageState extends State<PayInCryptoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(23))),
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
              Text(
                'Pay in Cryptocurrency',
                style: lexendDecaStyle(
                    fontSize: Adaptive.px(28),
                    color: mainYellow,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Adaptive.h(height(34)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total due in BTC:',
                    style: lexendStyle(
                        fontSize: Adaptive.px(22),
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    '0.0373453',
                    style: lexendStyle(
                        fontSize: Adaptive.px(22),
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: Adaptive.h(height(34)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Adaptive.w(3), vertical: Adaptive.h(1.8)),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'AMOUNT IN FIAT',
                      style: lexendStyle(
                          fontSize: Adaptive.px(22),
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      '\$99.99',
                      style: lexendStyle(
                          fontSize: Adaptive.px(22),
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Adaptive.h(height(34)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Adaptive.w(3), vertical: Adaptive.h(1.8)),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'EXCHANGE RATE',
                      style: lexendStyle(
                          fontSize: Adaptive.px(22),
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      '\$10,235.20',
                      style: lexendStyle(
                          fontSize: Adaptive.px(22),
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Adaptive.h(height(34)),
              ),
              SizedBox(
                height: Adaptive.h(height(54)),
                width: Adaptive.w(width(327)),
                child: PrimaryButton(
                  buttonText: '',
                  buttonColor: mainYellow,
                  buttonTextColor: Colors.black,
                  child: Text('PLEASE SCAN THE QR CODE TO PAY',
                      style: lexendDecaStyle(
                        fontSize: Adaptive.px(16),
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
