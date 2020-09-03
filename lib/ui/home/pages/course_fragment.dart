import 'package:Coursitory/components/item_course.dart';
import 'package:Coursitory/data/dummy/dummy.dart';
import 'package:Coursitory/data/models/course.dart';
import 'package:Coursitory/utils/responsive.dart';
import 'package:Coursitory/utils/themes.dart';
import 'package:Coursitory/utils/widget_helper.dart';
import 'package:flutter/material.dart';

class CourseFragment extends StatefulWidget {
  CourseFragment({Key key}) : super(key: key);

  @override
  _CourseFragmentState createState() => _CourseFragmentState();
}

class _CourseFragmentState extends State<CourseFragment> {
  List<Course> courses = [];

  @override
  void initState() {
    super.initState();
    courses.addAll(Dummy().getCourses());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.greyBg,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w(context),
          vertical: 48.h(context),
        ),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          Course course = courses[index];

          return ItemCourse(
            course: course,
            onTap: () {},
          ).addMarginBottom(6.h(context));
        },
      ),
    );
  }
}
