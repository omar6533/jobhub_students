import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/shared/components/jobHub_back_button.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';
import 'package:jobhub/shared/components/jobHub_text_filed.dart';

class EmpJobsView extends StatelessWidget {
  const EmpJobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                JobHubText(
                  text: 'Jobs',
                  style: size32BlackBold,
                ),
                JobHubBackButton(
                  icon: Icons.add,
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: const Color(0xFFF2F3F5),
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: Get.height *
                              0.9, // Set height to 80% of screen height

                          child: Container(
                            padding: const EdgeInsets.all(24),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              children: [
                                JobHubText(
                                  text: 'Post job',
                                  style: size32BlackBold,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                JobHubText(
                                  text: 'Title',
                                  style: size18w500Black,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                JobHubTextFiled(
                                  hintText: 'title or role of the job',
                                  textFiledColor:
                                      AppColors.textFiledBackgroundColor,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                JobHubText(
                                  text: 'Description',
                                  style: size18w500Black,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                JobHubTextFiled(
                                  hintText: 'Job Description',
                                  textFiledColor:
                                      AppColors.textFiledBackgroundColor,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                JobHubText(
                                  text: 'College',
                                  style: size18w500Black,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                JobHubTextFiled(
                                  hintText: 'college',
                                  textFiledColor:
                                      AppColors.textFiledBackgroundColor,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                JobHubText(
                                  text: 'Email',
                                  style: size18w500Black,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                JobHubTextFiled(
                                  hintText: 'Organization email',
                                  textFiledColor:
                                      AppColors.textFiledBackgroundColor,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                JobHubText(
                                  text: 'End date',
                                  style: size18w500Black,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                JobHubTextFiled(
                                  hintText: 'day/month/year',
                                  textFiledColor:
                                      AppColors.textFiledBackgroundColor,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                JobHubButton(
                                  text: 'Submit',
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
