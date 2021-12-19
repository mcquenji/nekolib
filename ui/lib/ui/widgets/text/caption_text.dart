import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nekolib.ui/ui.dart';

// ignore: camel_case_types
class NcCaptionText extends NcBaseText {
  NcCaptionText(
    String text, {
    Key? key,
    double? fontSize,
    bool buttonText = false,
    bool selectable = kIsWeb,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextAlign textAlign = TextAlign.left,
  }) : super(text, FontWeight.w600, key, fontSize, buttonText, overflow, textAlign, selectable);
}
