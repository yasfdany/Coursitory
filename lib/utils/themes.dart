import 'package:Coursitory/utils/responsive.dart';
import 'package:flutter/material.dart';

class ColorThemes {
  BuildContext context;
  TextStyle whiteBold12;
  TextStyle whiteBold28;
  TextStyle whiteBold26;
  TextStyle whiteBold22;
  TextStyle whiteOpacity14;
  TextStyle whiteOpacity12;
  TextStyle white16;
  TextStyle white14;
  TextStyle white12;
  TextStyle white10;
  TextStyle whiteBold16;
  TextStyle whiteBold14;
  TextStyle blackBold20;
  TextStyle blackBold22;
  TextStyle blackBold26;
  TextStyle blackBold32;
  TextStyle blackBold36;
  TextStyle black16;
  TextStyle blackOpacity10;
  TextStyle blackOpacity12;
  TextStyle black70Opacity12;
  TextStyle blackBold16;
  TextStyle blackBold18;
  TextStyle secondaryBold18;
  TextStyle secondaryBold14;
  TextStyle blackBold12;
  TextStyle blackBold14;
  TextStyle black12;
  TextStyle black14;
  TextStyle blackOpacity14;
  TextStyle appbarTitle;
  TextStyle primaryBold22;
  TextStyle primaryBold18;
  TextStyle primaryBold14;
  TextStyle primaryBold12;
  TextStyle primary12;

  TextStyle textStyle({
    double size,
    Color color,
    FontWeight fontWeight,
    String font = "NReguler",
  }) {
    return TextStyle(
      fontFamily: font,
      fontSize: Responsive(context).f(size),
      color: color,
      fontWeight: fontWeight,
    );
  }

  ColorThemes(this.context) {
    primaryBold12 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(12),
      color: ColorThemes.primary,
    );

    primary12 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(12),
      color: ColorThemes.primary,
    );

    primaryBold14 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(14),
      color: ColorThemes.primary,
    );

    primaryBold22 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(22),
      color: ColorThemes.primary,
    );

    primaryBold18 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(18),
      color: ColorThemes.primary,
    );

    appbarTitle = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(26),
      color: ColorThemes.black,
    );

    blackBold32 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(32),
      color: ColorThemes.black,
    );

    blackBold36 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(36),
      color: ColorThemes.black,
    );

    blackBold26 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(26),
      color: ColorThemes.black,
    );

    blackBold22 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(22),
      color: ColorThemes.black,
    );

    blackBold20 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(20),
      color: ColorThemes.black,
    );

    black16 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(16),
      color: ColorThemes.black,
    );

    secondaryBold14 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(14),
      color: ColorThemes.secondary,
    );

    secondaryBold18 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(18),
      color: ColorThemes.secondary,
    );

    blackBold18 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(18),
      color: ColorThemes.black,
    );

    black70Opacity12 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(12),
      color: ColorThemes.black.withOpacity(0.7),
    );

    blackOpacity10 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(10),
      color: ColorThemes.black.withOpacity(0.6),
    );

    blackOpacity12 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(12),
      color: ColorThemes.black.withOpacity(0.6),
    );

    blackBold16 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(16),
      color: ColorThemes.black,
    );

    blackOpacity14 = TextStyle(
      fontSize: Responsive(context).f(14),
      color: ColorThemes.black.withOpacity(0.6),
    );

    blackBold12 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(12),
      color: ColorThemes.black,
    );

    blackBold14 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(14),
      color: ColorThemes.black,
    );

    black12 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(12),
      color: ColorThemes.black,
    );

    white16 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(16),
      color: Colors.white,
    );

    white14 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(14),
      color: Colors.white,
    );

    white12 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(12),
      color: Colors.white,
    );

    white10 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(10),
      color: Colors.white,
    );

    black14 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(14),
      color: ColorThemes.black,
    );

    whiteBold16 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(16),
      color: Colors.white,
    );

    whiteBold14 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(14),
      color: Colors.white,
    );

    whiteOpacity14 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(14),
      color: Colors.white.withOpacity(0.7),
    );

    whiteOpacity12 = TextStyle(
      fontFamily: "NReguler",
      fontSize: Responsive(context).f(12),
      color: Colors.white.withOpacity(0.7),
    );

    whiteBold12 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(12),
      color: Colors.white,
    );

    whiteBold28 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(28),
      color: Colors.white,
    );

    whiteBold26 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(26),
      color: Colors.white,
    );

    whiteBold22 = TextStyle(
      fontFamily: "NExtraBold",
      fontSize: Responsive(context).f(22),
      color: Colors.white,
    );
  }

  static final Color black = Color(0xff2A2A2A);
  static final Color primary = Color(0xff4F69FC);
  static final Color lightPrimary = Color(0xffe1eef1);
  static final Color secondary = Color(0xffED6A5A);
  static final Color pink = Color(0xffFF9391);
  static final Color primaryDisableButton = Color(0xffF2C9D8);
  static final Color red = Color(0xffF71735);
  static final Color lightRed = Color(0xffffe8eb);
  static final Color grey = Color(0xffA2A2A2);
  static final Color greyBg = Color(0xffF3F4FA);
  static final Color yellow = Color(0xffFFD228);
  static final Color purple = Color(0xff7680FD);
  static final Color darkPurple = Color(0xff3D348B);
  static final Color magenta = Color(0xffD90368);
  static final Color brown = Color(0xff575366);
  static final Color grayFill = Color(0xffF1F1F1);
  static final Color grayStroke = Color(0xffDDDDDD);
}
