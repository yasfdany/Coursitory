import 'package:Coursitory/utils/themes.dart';
import 'package:flutter/material.dart';

class ProfileFragment extends StatefulWidget {
  ProfileFragment({Key key}) : super(key: key);

  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemes.greyBg,
    );
  }
}
