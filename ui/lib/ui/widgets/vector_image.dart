import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nekolib.ui/ui.dart';

class NcVectorImage extends StatelessWidget {
  const NcVectorImage({Key? key, required this.code, this.width, this.height, this.aliignment = Alignment.center}) : super(key: key);

  final String code;
  final double? width;
  final double? height;
  final Alignment aliignment;

  static const accentColor = "{accentcolor}";
  static const textColor = "{textcolor}";
  static const secondaryColor = "{secondarycolor}";
  static const primaryColor = "{primarycolor}";
  static const tertiaryColor = "{tertiaryColor}";
  static const lateColor = "{lateColor}";
  static const pendingColor = "{pendingColor}";
  static const uploadedColor = "{uploadedColor}";
  static const doneColor = "{doneColor}";
  static const buttonTextColor = "{teritaryColor}";

  static const List<String> colors = [accentColor, textColor, secondaryColor, primaryColor, tertiaryColor, doneColor, buttonTextColor, uploadedColor, lateColor, pendingColor];

  static String svg(String code) {
    code = code.replaceAll(accentColor, "#${NcThemes.current.accentColor.value.toRadixString(16)}");
    code = code.replaceAll(textColor, "#${NcThemes.current.textColor.value.toRadixString(16)}");
    code = code.replaceAll(secondaryColor, "#${NcThemes.current.secondaryColor.value.toRadixString(16)}");
    code = code.replaceAll(primaryColor, "#${NcThemes.current.primaryColor.value.toRadixString(16)}");
    code = code.replaceAll(tertiaryColor, "#${NcThemes.current.tertiaryColor.value.toRadixString(16)}");
    code = code.replaceAll(lateColor, "#${NcThemes.current.lateColor.value.toRadixString(16)}");
    code = code.replaceAll(uploadedColor, "#${NcThemes.current.uploadedColor.value.toRadixString(16)}");
    code = code.replaceAll(doneColor, "#${NcThemes.current.doneColor.value.toRadixString(16)}");
    code = code.replaceAll(buttonTextColor, "#${NcThemes.current.buttonTextColor.value.toRadixString(16)}");

    return code;
  }

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      svg(code),
      width: width,
      height: height,
      alignment: aliignment,
    );
  }
}
