import 'package:flutter/material.dart';
import 'package:jobhub/constants.dart';

class JobHubTextFiled extends StatelessWidget {
  Color? textFiledColor;
  TextEditingController? textEditingController;
  String? hintText;
  JobHubTextFiled({
    this.textEditingController,
    this.hintText,
    this.textFiledColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            hintText: hintText ?? '',
            filled: true,
            fillColor: textFiledColor ?? Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.primary,
                )),
            hoverColor: AppColors.primary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
