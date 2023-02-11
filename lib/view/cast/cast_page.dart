import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/constants.dart';
import 'package:boindo/view/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CastPage extends StatelessWidget {
  const CastPage({super.key});

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
            children: [
              SizedBox(
                height: Adaptive.h(height(47)),
              ),
              const HeaderWidget(title: 'Cast'),
              SizedBox(
                height: Adaptive.h(height(41)),
              ),
              Text(
                'Director',
                style: lexendDecaStyle(
                    fontSize: Adaptive.px(14),
                    color: mainYellow,
                    fontWeight: FontWeight.w700),
              ),
              Divider(
                color: borderColor,
              ),
              SizedBox(
                height: Adaptive.h(height(6)),
              ),
              Container(
                height: Adaptive.h(height(250)),
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: borderColor,
                                  ),
                                  SizedBox(
                                    width: Adaptive.w(2),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Alex Tsimikas',
                                        style: lexendStyle(
                                            fontSize: Adaptive.px(14),
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'Here comes text about ',
                                        style: lexendStyle(
                                            fontSize: Adaptive.px(12),
                                            color: borderColor,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: borderColor,
                              )
                            ],
                          ),
                          Divider(
                            color: borderColor,
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: Adaptive.h(height(8)),
              ),
              Text(
                'Feature Artists',
                style: lexendDecaStyle(
                    fontSize: Adaptive.px(14),
                    color: mainYellow,
                    fontWeight: FontWeight.w700),
              ),
              Divider(
                color: borderColor,
              ),
              SizedBox(
                height: Adaptive.h(height(3)),
              ),
              Container(
                height: Adaptive.h(height(280)),
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: borderColor,
                                  ),
                                  SizedBox(
                                    width: Adaptive.w(2),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Alex Tsimikas',
                                        style: lexendStyle(
                                            fontSize: Adaptive.px(14),
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'Here comes text about ',
                                        style: lexendStyle(
                                            fontSize: Adaptive.px(12),
                                            color: borderColor,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: borderColor,
                              )
                            ],
                          ),
                          Divider(
                            color: borderColor,
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
