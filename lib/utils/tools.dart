import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tools {
  static String capitalize(String text) {
    return text.substring(0, 1).toUpperCase() + text.substring(1);
  }

  static String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return htmlText.replaceAll(exp, '');
  }

  static String randomString(int strlen) {
    const chars = "abcdefghijklmnopqrstuvwxyz0123456789";

    Random rnd = new Random(new DateTime.now().millisecondsSinceEpoch);
    String result = "";
    for (var i = 0; i < strlen; i++) {
      result += chars[rnd.nextInt(chars.length)];
    }
    return result;
  }

  static String randomDigit(int strlen) {
    const chars = "0123456789";

    Random rnd = new Random(new DateTime.now().millisecondsSinceEpoch);
    String result = "";
    for (var i = 0; i < strlen; i++) {
      result += chars[rnd.nextInt(chars.length)];
    }
    return result;
  }

  static void navigateRefresh(BuildContext context, var screen, String route) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => screen),
      ModalRoute.withName(route),
    );
  }

  static void navigateReplace(BuildContext context, var screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) {
        return screen;
      }),
    );
  }

  static void navigatePush(BuildContext context, var screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return screen;
      }),
    );
  }

  static Future<dynamic> navigatePushAsync(
      BuildContext context, var screen) async {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return screen;
      }),
    );
  }

  static Future<double> getDiagonalInch() async {
    const platform = const MethodChannel('flutter.native/helper');

    double result = 0;
    try {
      result = await platform.invokeMethod('diagonal_size');
    } on PlatformException catch (e) {
      print("Failed to Invoke: '${e.message}'.");
    }

    return result;
  }

  static void closeKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static DateTime lastDayOfMonth(DateTime month) {
    var beginningNextMonth = (month.month < 12)
        ? new DateTime(month.year, month.month + 1, 1, 0, 0)
        : new DateTime(month.year + 1, 1, 1, 0, 0);
    return beginningNextMonth.subtract(new Duration(days: 1));
  }

  static DateTime firstDayOfMonth(DateTime month) {
    return DateTime(month.year, month.month, 1, 0, 0);
  }

  static void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }
}
