import 'package:Coursitory/components/card_container.dart';
import 'package:Coursitory/data/models/course.dart';
import 'package:Coursitory/utils/responsive.dart';
import 'package:Coursitory/utils/themes.dart';
import 'package:Coursitory/utils/widget_helper.dart';
import 'package:flutter/material.dart';

class ItemCourse extends StatelessWidget {
  final Course course;
  final VoidCallback onTap;

  const ItemCourse({
    Key key,
    this.course,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      onTap: onTap,
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            course.cover,
            width: double.infinity,
            height: 96.h(context),
            fit: BoxFit.cover,
          ),
          Text(
            course.name,
            style: ColorThemes(context).blackBold20,
          ).addMarginOnly(
            top: 16.h(context),
            left: 12.w(context),
            right: 24.w(context),
          ),
          Text(
            course.totalChapter.toString() + " Chapters",
            style: ColorThemes(context).black12.apply(
                  color: ColorThemes.black.withOpacity(0.6),
                ),
          ).addMarginOnly(
            left: 12.w(context),
            right: 24.w(context),
            bottom: 16.h(context),
          ),
        ],
      ),
    );
  }
}
