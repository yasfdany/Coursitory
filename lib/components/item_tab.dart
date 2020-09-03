import 'package:Coursitory/utils/widget_helper.dart';
import 'package:Coursitory/utils/responsive.dart';
import 'package:Coursitory/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemTab extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;
  final active;

  const ItemTab({
    Key key,
    this.icon,
    this.title,
    this.onTap,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(8.w(context)),
            child: Column(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 24.w(context),
                  height: 24.w(context),
                  color: active ? ColorThemes.primary : ColorThemes.black,
                ).addMarginBottom(6.h(context)),
                Text(
                  title,
                  style: ColorThemes(context).black14.apply(
                        color: active ? ColorThemes.primary : ColorThemes.black,
                      ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
