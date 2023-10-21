import 'package:flutter/material.dart';

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
