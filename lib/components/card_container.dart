import 'package:Coursitory/utils/responsive.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final double radius;
  final VoidCallback onTap;
  final VoidCallback onLongTap;
  final Color color;
  final BoxShadow shadow;
  final Border border;
  final EdgeInsets padding;
  final EdgeInsets margin;

  CardContainer({
    Key key,
    this.child,
    this.border,
    this.width,
    this.height,
    this.radius = 18,
    this.onTap,
    this.onLongTap,
    this.color = Colors.white,
    this.shadow,
    this.padding,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin != null ? margin : EdgeInsets.only(bottom: 8.h(context)),
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            onLongPress: onLongTap,
            child: Padding(
              padding:
                  padding != null ? padding : EdgeInsets.all(16.w(context)),
              child: child,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          shadow != null
              ? shadow
              : BoxShadow(
                  color: Color(0xffEFEFEF).withOpacity(0.6),
                  offset: Offset(0, 2),
                  blurRadius: 12,
                )
        ],
        border: border,
      ),
    );
  }
}
