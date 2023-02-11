import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton(
      {super.key,
      this.onPressed,
      required this.buttonText,
      required this.buttonColor,
      this.child,
      required this.buttonTextColor});
  final Function()? onPressed;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final Widget? child;
  @override
  State<PrimaryButton> createState() => _PrimaryButtionState();
}

class _PrimaryButtionState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: widget.child,
        // Text(widget.buttonText,
        //     style: lexendDecaStyle(
        //       fontSize: Adaptive.px(16),
        //       fontWeight: FontWeight.w700,
        //       color: widget.buttonTextColor,
        //     )),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(widget.buttonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ))),
        onPressed: widget.onPressed);
  }
}
