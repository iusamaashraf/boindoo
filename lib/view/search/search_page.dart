import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/main.dart';
import 'package:boindo/view/search/component/genre_tile.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:boindo/view/widget/primary_button.dart';
import 'package:boindo/view/widget/search_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  int categorySelect = 1;

  List<String> genreList = [
    'Drama',
    'History',
    'Sci-Fi',
    'History',
    'Recent History',
    'Science',
    'TED X',
    'War',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(gradient: backgroundGradient()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(width(20))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(height(47)),
                ),
                const HeaderWidget(title: 'Search'),
                SizedBox(
                  height: Adaptive.h(height(47)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Search for Title, Author ot Artist',
                    style: lexendDecaStyle(
                        fontSize: Adaptive.px(18),
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(32)),
                ),
                SearchInputField(searchController: searchController),
                SizedBox(
                  height: Adaptive.h(height(32)),
                ),
                Text(
                  "You can also  choose your interests and get the best recommendations. Don't worry, you can always change it later.",
                  style: lexendStyle(
                      fontSize: Adaptive.px(15),
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  height: Adaptive.h(height(24)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Category',
                    style: lexendStyle(
                        fontSize: Adaptive.px(16),
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(16)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    categoryTile('All', 1),
                    categoryTile('Plays', 2),
                    categoryTile('Summaries', 3),
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(height(32)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Genre',
                    style: lexendStyle(
                        fontSize: Adaptive.px(16),
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(height(10)),
                ),
                Wrap(
                  children: [
                    for (int i = 0; i < genreList.length; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Adaptive.w(1),
                            vertical: Adaptive.h(0.8)),
                        child: GenreTile(index: i, title: genreList[i]),
                      )
                  ],
                ),
                SizedBox(
                  height: Adaptive.h(height(45)),
                ),
                buttons()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: Adaptive.h(height(54)),
          width: Adaptive.w(width(152.75)),
          child: PrimaryButton(
            buttonText: 'CANCEL',
            buttonColor: Color(0XFF1E1E1E),
            buttonTextColor: Colors.white,
            child: Text('Cancel',
                style: lexendDecaStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                )),
          ),
        ),
        SizedBox(
          height: Adaptive.h(height(54)),
          width: Adaptive.w(width(152.75)),
          child: PrimaryButton(
            buttonText: 'CANCEL',
            buttonColor: mainYellow,
            buttonTextColor: Colors.white,
            child: Text('Save',
                style: lexendDecaStyle(
                  fontSize: Adaptive.px(16),
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
          ),
        )
      ],
    );
  }

  Widget categoryTile(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          categorySelect = index;
        });
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
            color: categorySelect == index ? mainYellow : null,
            borderRadius: BorderRadius.circular(100)),
        child: Text(
          title,
          style: lexendStyle(
              color: categorySelect == index ? Colors.black : mainYellow,
              fontSize: Adaptive.px(18),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
