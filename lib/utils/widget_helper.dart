import 'package:flutter/widgets.dart';

extension addMargin on Widget {
  Widget addMarginBottom(double margin) {
    return Container(
      margin: EdgeInsets.only(bottom: margin),
      child: this,
    );
  }

  Widget addMarginTop(double margin) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      child: this,
    );
  }

  Widget addMarginLeft(double margin) {
    return Container(
      margin: EdgeInsets.only(left: margin),
      child: this,
    );
  }

  Widget addMarginRight(double margin) {
    return Container(
      margin: EdgeInsets.only(left: margin),
      child: this,
    );
  }

  Widget addAllMargin(double margin) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: this,
    );
  }

  Widget addSymmetricMargin({double vertical, double horizontal}) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: vertical != null ? vertical : 0,
        horizontal: horizontal != null ? horizontal : 0,
      ),
      child: this,
    );
  }

  Widget addMarginOnly({
    double left,
    double top,
    double right,
    double bottom,
  }) {
    return Container(
      margin: EdgeInsets.only(
        left: left != null ? left : 0,
        top: top != null ? top : 0,
        right: right != null ? right : 0,
        bottom: bottom != null ? bottom : 0,
      ),
      child: this,
    );
  }

  get addExpanded {
    return Expanded(child: this);
  }
}

class WidgetHelper {}
