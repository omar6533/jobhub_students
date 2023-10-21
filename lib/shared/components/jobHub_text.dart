import 'package:flutter/material.dart';
import 'package:jobhub/constants.dart';

class JobHubText extends StatelessWidget {
  String? text;
  TextStyle? style;
  JobHubText({
    required this.text,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: style,
    );
  }
}

TextStyle? titleStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w700);
TextStyle? nameStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.primary);
