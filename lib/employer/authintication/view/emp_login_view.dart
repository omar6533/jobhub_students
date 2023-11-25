import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/shared/components/jobHub_back_button.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';
import 'package:jobhub/shared/components/jobHub_text_filed.dart';

class EmpLoginView extends StatelessWidget {
  const EmpLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                JobHubBackButton(),
                SizedBox(
                  height: 3.h,
                ),
                Image.asset('assets/JobHub.png'),
                SizedBox(
                  height: 15.h,
                ),
                JobHubText(
                  text: 'Employer login',
                  style: size20BoldBlack,
                ),
                SizedBox(
                  height: 10.h,
                ),
                JobHubTextFiled(
                    hintText: 'Email',
                    textFiledColor: AppColors.textFiledBackgroundColor),
                SizedBox(
                  height: 1.h,
                ),
                JobHubTextFiled(
                    hintText: 'Password',
                    textFiledColor: AppColors.textFiledBackgroundColor),
                SizedBox(
                  height: 6.h,
                ),
                JobHubButton(
                  text: 'Login',
                  onPressed: () {},
                ),
              ],
            )),
      ),
    );
  }
}
