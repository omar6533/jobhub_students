import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/profile/controller/studnet_profile_controller.dart';
import 'package:jobhub/profile/views/student_skills_view.dart';
import 'package:jobhub/shared/components/jobHub_back_button.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';
import 'package:jobhub/shared/components/jobHub_text_filed.dart';

class StudentProfileExperienceView extends StatelessWidget {
  const StudentProfileExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    StudentProfileController studentProfileController = Get.find();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          JobHubBackButton(),
          SizedBox(
            height: 6.h,
          ),
          JobHubText(text: 'My Account', style: titleStyle),
          SizedBox(
            height: 3.h,
          ),
          JobHubText(
            text: 'Experince',
            style: size18w500Black,
          ),
          SizedBox(
            height: 4.h,
          ),
          JobHubText(
            text: 'Company name',
            style: size14Black,
          ),
          JobHubTextFiled(
              textFiledColor: AppColors.textFiledBackgroundColor,
              textEditingController: studentProfileController.companyName),
          SizedBox(
            height: 1.h,
          ),
          JobHubText(
            text: 'Position',
            style: size14Black,
          ),
          JobHubTextFiled(
              textFiledColor: AppColors.textFiledBackgroundColor,
              textEditingController: studentProfileController.position),
          JobHubText(
            text: 'Description',
            style: size14Black,
          ),
          JobHubTextFiled(
              textFiledColor: AppColors.textFiledBackgroundColor,
              textEditingController: studentProfileController.description),
          SizedBox(
            height: 1.h,
          ),
          JobHubText(
            text: 'Start date',
            style: size14Black,
          ),
          JobHubTextFiled(
              textFiledColor: AppColors.textFiledBackgroundColor,
              textEditingController: studentProfileController.startDate),
          SizedBox(
            height: 1.h,
          ),
          JobHubText(
            text: 'end date',
            style: size14Black,
          ),
          JobHubTextFiled(
              textFiledColor: AppColors.textFiledBackgroundColor,
              textEditingController: studentProfileController.endDate),
          SizedBox(
            height: 5.h,
          ),
          JobHubButton(
            onPressed: () {
              studentProfileController.selectedwidgetIndex.value = 2;
            },
            text: "Next",
          )
        ],
      ),
    );
  }
}
