import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ActorProfileScreen extends StatefulWidget {
  const ActorProfileScreen({super.key});

  @override
  State<ActorProfileScreen> createState() => _ActorProfileScreenState();
}

class _ActorProfileScreenState extends State<ActorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        decoration: BoxDecoration(
            gradient: backgroundGradient(),
            image: const DecorationImage(
                image: AssetImage('assets/images/my_user.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: Adaptive.h(height(47)),
            ),
            const HeaderWidget(title: 'CheckOut'),
            Expanded(
              child: Container(
                // height: Adaptive.h(50),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xff282828),
                      Color(0xff232020),
                      Color.fromRGBO(35, 32, 32, 0.55),
                      Colors.transparent
                    ],
                    stops: [0.4099, 0.5444, 0.7934, 0.9741],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Adaptive.w(5)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: Adaptive.h(45),
                        ),
                        userinfoTile(),
                        SizedBox(
                          height: Adaptive.h(4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '6,281k',
                                  style: lexendStyle(
                                      fontSize: Adaptive.px(13),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Folowers',
                                  style: lexendStyle(
                                      fontSize: Adaptive.px(13),
                                      color: Color(0xffC7C3C3),
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Adaptive.w(5),
                                  vertical: Adaptive.h(1)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: mainYellow),
                              child: Text(
                                'Follow',
                                style: lexendStyle(
                                    fontSize: Adaptive.px(14),
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Adaptive.h(4),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Title',
                            style: lexendStyle(
                                fontSize: Adaptive.px(13.67),
                                color: mainYellow,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: Adaptive.h(2),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Biography',
                            style: lexendDecaStyle(
                                fontSize: Adaptive.px(22),
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: Adaptive.h(height(14)),
                        ),
                        Text(
                          'On a visited section, it returns the user to their previous scroll position there On a visited section, it returns the user to their previous scroll position there.. Read more.. ',
                          style: lexendStyle(
                              fontSize: Adaptive.px(12),
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: Adaptive.h(height(14)),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Content you can listen to John doe',
                            style: lexendStyle(
                                fontSize: Adaptive.px(14),
                                color: mainYellow,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: Adaptive.h(height(21)),
                        ),

                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: Adaptive.h(height(80)),
                                          width: Adaptive.w(width(80)),
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(hand),
                                                  fit: BoxFit.cover)),
                                        ),
                                        SizedBox(width: Adaptive.w(5)),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: Adaptive.w(35),
                                              child: Text(
                                                'Harry Potter risoner of Azkaban',
                                                style: lexendStyle(
                                                    fontSize: Adaptive.px(16),
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Text(
                                              'JK. rowling',
                                              style: lexendStyle(
                                                  fontSize: Adaptive.px(12),
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.favorite,
                                          color: mainYellow,
                                        ),
                                        SizedBox(
                                          width: Adaptive.w(1),
                                        ),
                                        Text(
                                          '25k',
                                          style: lexendStyle(
                                              fontSize: Adaptive.px(10),
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            })

                        ////
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row userinfoTile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'JHON DOE',
              style: lexendDecaStyle(
                  fontSize: Adaptive.px(24),
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Actor, script writer',
              style: lexendStyle(
                  fontSize: Adaptive.px(13),
                  color: Color(0xffC7C3C3),
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        Row(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.favorite,
                  color: mainYellow,
                ),
                SizedBox(
                  width: Adaptive.w(1),
                ),
                Text(
                  '25k',
                  style: lexendStyle(
                      fontSize: Adaptive.px(10),
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              width: Adaptive.w(5),
            ),
            Icon(
              Icons.share,
              color: Color(0xffC7C3C3),
            )
          ],
        ),
      ],
    );
  }
}
