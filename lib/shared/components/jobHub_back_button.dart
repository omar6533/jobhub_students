import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/constants.dart';

class JobHubBackButton extends StatelessWidget {
  const JobHubBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          alignment: Alignment.topLeft,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    ]);
  }
}
