import 'package:Coursitory/components/touchable_opacity.dart';
import 'package:Coursitory/utils/responsive.dart';
import 'package:Coursitory/utils/themes.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  String text;
  VoidCallback onTap;
  Color color;
  Color textColor;
  Widget child;
  EdgeInsets padding;
  Border border;

  PrimaryButton({
    Key key,
    this.text,
    this.onTap,
    this.color,
    this.textColor,
    this.child,
    this.padding,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (color == null) color = ColorThemes.primary;
    if (textColor == null) textColor = Colors.white;
    if (padding == null) padding = EdgeInsets.all(16.w(context));

    return TouchableOpacity(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: onTap != null ? color : ColorThemes.grayStroke,
          borderRadius: BorderRadius.circular(12.w(context)),
          boxShadow: onTap != null
              ? [
                  BoxShadow(
                    color: color.withOpacity(0.5),
                    offset: Offset(0, 4),
                    blurRadius: 12,
                  )
                ]
              : [],
        ),
        child: Center(
          child: child != null
              ? child
              : Text(
                  text,
                  style: ColorThemes(context).white14.apply(
                        color: onTap != null
                            ? textColor
                            : ColorThemes.black.withOpacity(0.6),
                      ),
                ),
        ),
      ),
    );
  }
}
