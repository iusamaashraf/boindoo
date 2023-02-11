import 'package:boindo/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CircularWidget extends StatefulWidget {
  const CircularWidget({super.key});

  @override
  State<CircularWidget> createState() => _CircularWidgetState();
}

class _CircularWidgetState extends State<CircularWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topLeft,
          height: Adaptive.h(15),
          width: Adaptive.w(20),
          //  color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: Adaptive.h(9),
                width: Adaptive.w(16),
                decoration: const BoxDecoration(
                    color: mainYellow, shape: BoxShape.circle),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: Adaptive.h(4.5),
                        width: Adaptive.w(14),
                        decoration: centerBoxdecoration())
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: Adaptive.h(3),
          right: Adaptive.w(1),
          child: Container(
            height: Adaptive.h(2),
            width: Adaptive.w(7),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff545454),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(86, 90, 99, 0.8),
                  offset: Offset(-3, -3),
                  blurRadius: 6,
                ),
                BoxShadow(
                  color: Color.fromRGBO(16, 16, 16, 0.75),
                  offset: Offset(3, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  BoxDecoration centerBoxdecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.1642, 0.845],
        colors: [
          Color(0xff333333),
          Color(0xff3B3C3F),
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          offset: const Offset(0, 4),
          blurRadius: 4,
        ),
      ],
    );
  }
}
