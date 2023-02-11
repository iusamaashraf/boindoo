import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/model/songs_model.dart';
import 'package:boindo/view/seach_result/component/search_result_tile.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.h(height(23))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Adaptive.h(height(47)),
              ),
              const HeaderWidget(title: 'Search Result'),
              SizedBox(
                height: Adaptive.h(height(56)),
              ),
              Text(
                'Search Result',
                style: lexendDecaStyle(
                    fontSize: Adaptive.px(18),
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Adaptive.h(height(20)),
              ),
              SizedBox(
                height: Adaptive.h(height(205)),
                child: ListView.builder(
                    itemCount: searchResult.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SearchResultile(songsModel: searchResult[index]);
                    }),
              ),
              SizedBox(
                height: Adaptive.h(height(20)),
              ),
              Text(
                'Recomended',
                style: lexendDecaStyle(
                    fontSize: Adaptive.px(18),
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Adaptive.h(height(20)),
              ),
              SizedBox(
                height: Adaptive.h(height(205)),
                child: ListView.builder(
                    itemCount: recomendedList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SearchResultile(songsModel: recomendedList[index]);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
