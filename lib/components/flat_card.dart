import 'package:Coursitory/utils/responsive.dart';
import 'package:flutter/material.dart';

class FlatCard extends StatefulWidget {
  final Widget child;
  final Color color;
  final BorderRadius borderRadius;
  final double width;
  final double height;
  final Border border;
  final BoxShadow shadow;

  FlatCard({
    Key key,
    this.child,
    this.color,
    this.borderRadius,
    this.width,
    this.height,
    this.border,
    this.shadow,
  }) : super(key: key);

  @override
  _FlatCardState createState() => _FlatCardState();
}

class _FlatCardState extends State<FlatCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: widget.borderRadius != null
          ? widget.borderRadius
          : BorderRadius.circular(4.w(context)),
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.color != null ? widget.color : Color(0xFFFAFAFA),
          borderRadius: widget.borderRadius != null
              ? widget.borderRadius
              : BorderRadius.circular(4.w(context)),
          border: widget.border,
          boxShadow: widget.shadow != null ? [widget.shadow] : [],
        ),
        child: widget.child,
      ),
    );
  }
}
