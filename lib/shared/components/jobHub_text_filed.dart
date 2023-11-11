import 'package:flutter/material.dart';
import 'package:jobhub/constants.dart';

class JobHubTextFiled extends StatelessWidget {
  const JobHubTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color
            blurRadius: 250, // Adjust the blur radius as needed
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
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
