import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/employer/profile/controllers/emp_profile_controller.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';
import 'package:jobhub/shared/components/jobHub_text_filed.dart';

class EmpProfileView extends StatelessWidget {
  const EmpProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    EmpProfileController empProfileController = Get.put(EmpProfileController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              JobHubText(
                text: 'Employer’s Information',
                style: size32Black,
              ),
              SizedBox(
                height: 4.h,
              ),
              JobHubText(
                text: 'Name',
                style: size18w500Black,
              ),
              SizedBox(
                height: 2.h,
              ),
              JobHubTextFiled(
                hintText: 'Company name in English',
                textFiledColor: AppColors.textFiledBackgroundColor,
              ),
              SizedBox(
                height: 4.h,
              ),
              JobHubText(
                text: 'Filed',
                style: size18w500Black,
              ),
              SizedBox(
                height: 2.h,
              ),
              JobHubTextFiled(
                hintText: 'Filed of work',
                textFiledColor: AppColors.textFiledBackgroundColor,
              ),
              SizedBox(
                height: 4.h,
              ),
              JobHubText(
                text: 'Sector',
                style: size18w500Black,
              ),
              SizedBox(
                height: 2.h,
              ),
              //sector section
              SizedBox(
                height: 5.h,
                child: ListView.builder(
                  itemCount: empProfileController.listOfSectors.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (empProfileController.selectedSector.value ==
                            index) {
                          empProfileController.selectedSector.value = -1;
                        } else {
                          empProfileController.selectedSector.value = index;
                        }
                      },
                      child: Obx(
                        () => Container(
                          width: 25.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color:
                                  empProfileController.selectedSector == index
                                      ? AppColors.primary
                                      : Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(8),
                          margin: EdgeInsets.symmetric(horizontal: 2.w),
                          child: JobHubText(
                              textAlign: TextAlign.center,
                              style: size14Black,
                              text:
                                  '${empProfileController.listOfSectors[index]}'),
                        ),
                      ),
                    );
                  },
                ),
              ), // end of category section
              //end of sector section
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
                textFiledColor: AppColors.textFiledBackgroundColor,
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
      ),
    );
  }
}
