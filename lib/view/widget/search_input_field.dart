import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInputField extends StatelessWidget {
  SearchInputField({super.key, required this.searchController});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      cursorColor: mainYellow,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            searchIcon,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1, color: borderColor),
          //<-- SEE HERE
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1, color: borderColor),
          //<-- SEE HERE
        ),
      ),
    );
  }
}
