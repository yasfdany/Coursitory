import 'package:Coursitory/components/item_tab.dart';
import 'package:Coursitory/r.dart';
import 'package:Coursitory/ui/home/pages/course_fragment.dart';
import 'package:Coursitory/ui/home/pages/home_fragment.dart';
import 'package:Coursitory/ui/home/pages/profile_fragment.dart';
import 'package:Coursitory/utils/responsive.dart';
import 'package:Coursitory/utils/themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;
  PageController pageController = PageController();
  var fragments = [
    HomeFragment(),
    CourseFragment(),
    ProfileFragment(),
  ];

  void changePage(int page) {
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 150),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.greyBg,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: fragments.map((e) => e).toList(),
              onPageChanged: (index) {
                setState(() {
                  page = index;
                });
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.w(context)),
                topRight: Radius.circular(24.w(context)),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -1),
                  color: ColorThemes.black.withOpacity(0.1),
                  blurRadius: 24,
                  spreadRadius: 0.5,
                ),
              ],
            ),
            child: Row(
              children: [
                ItemTab(
                  active: page == 0,
                  onTap: () {
                    changePage(0);
                  },
                  icon: R.assetsIconsIcHome,
                  title: "Home",
                ),
                ItemTab(
                  active: page == 1,
                  onTap: () {
                    changePage(1);
                  },
                  icon: R.assetsIconsIcClass,
                  title: "Class",
                ),
                ItemTab(
                  active: page == 2,
                  onTap: () {
                    changePage(2);
                  },
                  icon: R.assetsIconsIcProfile,
                  title: "Profile",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
