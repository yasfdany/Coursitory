import 'package:Coursitory/components/card_container.dart';
import 'package:Coursitory/components/flat_card.dart';
import 'package:Coursitory/components/item_card_progress.dart';
import 'package:Coursitory/components/item_tab.dart';
import 'package:Coursitory/components/primary_button.dart';
import 'package:Coursitory/components/textarea.dart';
import 'package:Coursitory/data/dummy/dummy.dart';
import 'package:Coursitory/data/models/course.dart';
import 'package:Coursitory/data/models/course_progress.dart';
import 'package:Coursitory/r.dart';
import 'package:Coursitory/utils/responsive.dart';
import 'package:Coursitory/utils/themes.dart';
import 'package:Coursitory/utils/tools.dart';
import 'package:Coursitory/utils/widget_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeFragment extends StatefulWidget {
  HomeFragment({Key key}) : super(key: key);

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  List<Course> courses = [];
  List<CourseProgress> courseProgreses = [];

  @override
  void initState() {
    super.initState();
    courses.addAll(Dummy().getCourses());
    courseProgreses.addAll(Dummy().getProgress());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.greyBg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "Hai Antonio",
                  style: ColorThemes(context).blackBold26,
                ).addMarginOnly(
                  top: 64.h(context),
                  bottom: 4.h(context),
                ),
                Text(
                  "What would you like to learn today? Search Below",
                  textAlign: TextAlign.center,
                  style: ColorThemes(context)
                      .black16
                      .apply(color: ColorThemes.black.withOpacity(0.6)),
                ).addSymmetricMargin(horizontal: 60.w(context))
              ],
            ),
            Column(
              children: [
                FlatCard(
                  borderRadius: BorderRadius.circular(12.w(context)),
                  width: double.infinity,
                  child: Row(
                    children: [
                      TextArea(
                        fontSize: 16,
                        hint: "Looking for",
                      ).addExpanded,
                      PrimaryButton(
                        onTap: () {
                          Tools.closeKeyboard(context);
                        },
                        child: SvgPicture.asset(
                          R.assetsIconsIcSearch,
                          width: 18.w(context),
                          height: 18.w(context),
                          color: Colors.white,
                        ),
                      ).addAllMargin(8.w(context))
                    ],
                  ),
                ).addSymmetricMargin(horizontal: 24.w(context))
              ],
            ).addMarginTop(42.h(context)),
            Row(
              children: [
                Text(
                  "Studying",
                  style: ColorThemes(context).blackBold18,
                ),
              ],
            ).addMarginOnly(
              left: 24.w(context),
              top: 36.h(context),
              bottom: 16.h(context),
            ),
            Container(
              width: double.infinity,
              height: 240.h(context),
              child: ListView.builder(
                padding: EdgeInsets.only(right: 24.w(context)),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: courseProgreses.length,
                itemBuilder: (context, index) {
                  CourseProgress courseProgress = courseProgreses[index];

                  return ItemCardProgress(
                    onTap: () {},
                    courseProgress: courseProgress,
                  ).addMarginRight(24.w(context));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
