import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:jobhub/profile/controller/studnet_profile_controller.dart';
import 'package:jobhub/shared/components/jobHub_back_button.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';
import 'package:jobhub/shared/components/jobHub_text_filed.dart';
import 'package:jobhub/shared/helpers.dart';

class StudentProfileSkillsViw extends StatefulWidget {
  const StudentProfileSkillsViw({super.key});

  @override
  State<StudentProfileSkillsViw> createState() => _StudentSkillsViwState();
}

class _StudentSkillsViwState extends State<StudentProfileSkillsViw> {
  @override
  Widget build(BuildContext context) {
    StudentProfileController studentProfileController = Get.find();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const JobHubBackButton(),
          SizedBox(
            height: 6.h,
          ),
          JobHubText(text: 'My Account', style: titleStyle),
          SizedBox(
            height: 3.h,
          ),
          JobHubText(
            text: 'Skills',
            style: size18w500Black,
          ),
          SizedBox(
            height: 4.h,
          ),
          JobHubText(
            text: 'Certificate Name',
            style: size14Black,
          ),
          JobHubTextFiled(),
          SizedBox(
            height: 1.h,
          ),
          JobHubText(
            text: 'Date',
            style: size14Black,
          ),
          JobHubTextFiled(),
          SizedBox(
            height: 5.h,
          ),
          JobHubButton(
            onPressed: () async {
              showLoaderDialog(context);
              await Future.delayed(Duration(seconds: 3));
              showMessage(
                  color: Colors.green,
                  title: 'Submitted',
                  message: 'Your data has been submitted');

              dismissLoaderDialog(context);
              studentProfileController.isStudentProfileEmpty.value = false;
            },
            text: "Submit",
          )
        ],
      ),
    );
  }
}
