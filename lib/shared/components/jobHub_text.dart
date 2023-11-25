import 'package:flutter/material.dart';
import 'package:jobhub/constants.dart';

class JobHubText extends StatelessWidget {
  String? text;
  TextAlign? textAlign;

  TextStyle? style;
  JobHubText({
    required this.text,
    this.style,
    this.textAlign,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign ?? TextAlign.start,
      text.toString(),
      style: style,
    );
  }
}

TextStyle? titleStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w700);
TextStyle? size18w500Black =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
TextStyle? size14Black = TextStyle(
  fontSize: 14,
);
TextStyle? nameStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.primary);
TextStyle? size20BoldBlack =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black);
TextStyle? size32Black =
    TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Colors.black);
TextStyle? size32BlackBold =
    TextStyle(fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black);
