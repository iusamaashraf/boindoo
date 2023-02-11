import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key,
      required this.controller,
      required this.hintext,
      required this.validator});
  final String hintext;
  final TextEditingController controller;
  final String? Function(String? val) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      maxLines: null,
      controller: controller,
      style: const TextStyle(color: Colors.white),
      cursorColor: mainYellow,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 8),
        hintText: hintext,
        hintStyle: lexendStyle(
            fontSize: Adaptive.px(14),
            fontWeight: FontWeight.w400,
            color: Colors.white),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Color(
                0xff777777,
              ),
              width: 1.5),
        ),
        errorStyle: lexendStyle(
            fontSize: Adaptive.px(11),
            fontWeight: FontWeight.w400,
            color: errorCOlor),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: mainYellow, width: 1.5),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: mainYellow, width: 1.5),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Color(
                0xff777777,
              ),
              width: 1.5),
        ),
      ),
    );
  }
}
