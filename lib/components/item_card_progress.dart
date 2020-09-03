import 'package:Coursitory/components/card_container.dart';
import 'package:Coursitory/components/flat_card.dart';
import 'package:Coursitory/data/models/course_progress.dart';
import 'package:Coursitory/utils/responsive.dart';
import 'package:Coursitory/utils/themes.dart';
import 'package:Coursitory/utils/widget_helper.dart';
import 'package:flutter/material.dart';

class ItemCardProgress extends StatelessWidget {
  final CourseProgress courseProgress;
  final VoidCallback onTap;

  const ItemCardProgress({
    Key key,
    this.courseProgress,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      onTap: onTap,
      padding: EdgeInsets.all(0),
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            courseProgress.course.cover,
            width: double.infinity,
            height: 96.h(context),
            fit: BoxFit.cover,
          ),
          Text(
            courseProgress.course.category,
            style: ColorThemes(context).primaryBold14,
          ).addMarginOnly(
            top: 12.h(context),
            left: 12.w(context),
            bottom: 14.h(context),
          ),
          Text(
            courseProgress.course.name,
            style: ColorThemes(context).blackBold20,
          )
              .addMarginOnly(
                left: 12.w(context),
                right: 24.w(context),
              )
              .addExpanded,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                courseProgress.totalChapterDone.toString() +
                    " of " +
                    courseProgress.course.totalChapter.toString() +
                    " lessons",
                style: ColorThemes(context).black12.apply(
                      color: ColorThemes.black.withOpacity(0.6),
                    ),
              ),
              Stack(
                children: [
                  FlatCard(
                    width: 46.w(context),
                    height: 12.h(context),
                    color: ColorThemes.greyBg,
                    borderRadius: BorderRadius.circular(24.w(context)),
                  ),
                  FlatCard(
                    width: 46.w(context) *
                        (courseProgress.totalChapterDone /
                            courseProgress.course.totalChapter),
                    height: 12.h(context),
                    color: ColorThemes.primary,
                    borderRadius: BorderRadius.circular(24.w(context)),
                  )
                ],
              ),
            ],
          ).addAllMargin(12.w(context))
        ],
      ),
    );
  }
}
