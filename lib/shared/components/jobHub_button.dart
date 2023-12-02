import 'package:flutter/material.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';

class JobHubButton extends StatelessWidget {
  void Function()? onPressed;
  String? text;
  Color? backgroundColor;

  String? imagePath;
  JobHubButton({
    required this.onPressed,
    this.text,
    this.backgroundColor,
    this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8), // Set the border radius here
            ),
          ),
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor ?? AppColors.primary)),
      onPressed: onPressed,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        imagePath != null
            ? Image.asset(
                height: 30,
                width: 30,
                fit: BoxFit.contain,
                imagePath.toString())
            : const SizedBox(),
        const SizedBox(
          width: 10,
        ),
        JobHubText(
          text: text,
          style: size12textWhite,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
