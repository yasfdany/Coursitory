import 'package:Coursitory/components/flat_card.dart';
import 'package:Coursitory/utils/responsive.dart';
import 'package:Coursitory/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/svg.dart';

class TextArea extends StatefulWidget {
  String hint;
  Widget icon;
  TextEditingController controller;
  TextInputAction textInputAction;
  TextInputType inputType;
  List<TextInputFormatter> inputFormatter;
  bool secureInput = false;
  int maxLenght;
  int maxLine;
  Function(String value) onChangedText;
  Function(String value) onSubmitText;
  double width;
  double height;
  TextCapitalization textCapitalization;
  MainAxisAlignment mainAxisAlignment;
  Color color;
  bool enable;
  bool error;
  String errorMessage;
  bool autoFocus;
  double fontSize;
  TextAlign textAlign;

  TextArea({
    Key key,
    this.hint,
    this.icon,
    this.controller,
    this.inputType,
    this.secureInput = false,
    this.inputFormatter,
    this.maxLenght,
    this.maxLine = 1,
    this.onChangedText,
    this.width,
    this.height,
    this.onSubmitText,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.color,
    this.enable = true,
    this.error = false,
    this.autoFocus = false,
    this.errorMessage = "",
    this.fontSize = 14,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  _TextAreaState createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  @override
  Widget build(BuildContext context) {
    return FlatCard(
      color: widget.color,
      width: widget.width,
      height: widget.height,
      child: Padding(
        padding: EdgeInsets.all(
          16.w(context),
        ),
        child: Row(
          children: <Widget>[
            widget.icon != null ? widget.icon : Container(),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: widget.mainAxisAlignment,
                children: <Widget>[
                  TextField(
                    textAlign: widget.textAlign,
                    autofocus: widget.autoFocus,
                    enabled: widget.enable,
                    minLines: 1,
                    maxLines: widget.maxLine,
                    textCapitalization: widget.textCapitalization,
                    textInputAction: widget.textInputAction,
                    onSubmitted: (value) {
                      if (widget.onSubmitText != null) {
                        widget.onSubmitText(value);
                      }
                    },
                    onChanged: (value) {
                      if (widget.onChangedText != null) {
                        widget.onChangedText(value);
                      }
                    },
                    obscureText: widget.secureInput,
                    controller: widget.controller,
                    keyboardType: widget.inputType,
                    style: TextStyle(fontSize: widget.fontSize.f(context)),
                    inputFormatters: widget.inputFormatter,
                    maxLength: widget.maxLenght,
                    cursorColor: ColorThemes.primary,
                    decoration: InputDecoration.collapsed(
                      hintText: widget.hint,
                      hintStyle: TextStyle(
                        color: Color(0xff2a2a2a).withOpacity(0.3),
                        fontSize: widget.fontSize.f(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
