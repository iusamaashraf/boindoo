import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GenreTile extends StatefulWidget {
  GenreTile({super.key, required this.index, required this.title});

  int index;
  String title;

  @override
  State<GenreTile> createState() => _GenreTileState();
}

class _GenreTileState extends State<GenreTile> {
  int genreSelect = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (genreSelect == widget.index) {
          setState(() {
            genreSelect = -1;
          });
        } else {
          setState(() {
            genreSelect = widget.index;
          });
        }
      },
      child: Container(
        padding: EdgeInsets.only(
          bottom: Adaptive.h(height(12)),
          left: Adaptive.w(width(24)),
          right: Adaptive.w(width(24)),
          top: Adaptive.h(height(12)),
        ),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: mainYellow),
            color: genreSelect == widget.index ? mainYellow : null,
            borderRadius: BorderRadius.circular(100)),
        child: Text(
          widget.title,
          style: lexendStyle(
              color: genreSelect == widget.index ? Colors.black : mainYellow,
              fontSize: Adaptive.px(18),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
